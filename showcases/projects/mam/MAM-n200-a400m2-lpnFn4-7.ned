
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn4-7
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
        @display("p=379.00,394.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=389.34,367.87");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=306.81,385.23");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=294.61,353.29");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=311.38,333.74");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=367.31,265.99");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=305.95,220.52");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=325.29,217.18");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=331.37,203.54");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=349.47,255.54");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=313.26,164.42");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=339.62,158.19");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=386.53,191.17");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=311.07,191.98");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=276.01,231.06");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=241.04,153.81");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=208.31,196.21");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=154.35,179.44");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=146.70,205.24");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=146.59,239.33");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=236.28,229.36");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=251.53,172.58");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=277.11,165.85");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=272.28,208.62");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=264.57,119.76");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=278.55,125.41");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=364.80,143.44");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=384.82,102.85");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=373.38,53.51");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=283.43,92.16");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=270.22,91.35");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=185.76,59.85");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=152.63,40.43");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=179.99,16.76");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=223.33,72.91");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=164.43,110.01");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=88.13,85.28");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=67.02,121.05");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=27.94,68.38");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=60.87,57.65");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=59.93,6.74");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=28.62,90.35");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=60.83,111.54");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=116.30,99.27");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=201.00,122.81");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=186.90,122.58");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=108.20,75.03");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=178.86,109.95");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=96.08,163.67");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=16.06,138.90");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=371.31,331.31");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=316.51,319.67");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=217.55,363.62");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=293.59,332.20");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=249.29,282.75");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=371.93,284.74");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=350.80,244.24");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=326.92,300.68");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=374.56,233.94");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=330.15,177.38");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=300.04,173.97");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=351.76,85.07");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=388.52,159.99");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=337.41,249.98");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=200.56,252.35");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=218.65,167.44");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=115.82,176.66");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=111.28,219.89");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=53.36,183.61");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=233.33,199.71");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=262.82,219.52");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=229.24,165.49");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=257.01,109.38");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=278.07,199.88");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=261.89,154.57");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=261.99,143.06");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=308.11,180.19");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=342.62,180.91");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=395.35,57.19");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=267.09,63.97");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=248.91,81.44");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=180.78,46.23");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=110.49,31.92");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=195.34,50.65");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=310.99,116.16");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=105.41,111.91");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=128.52,109.87");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=81.87,127.64");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=63.12,142.43");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=80.08,151.53");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=99.40,26.07");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=101.27,93.92");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=79.48,200.99");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=181.07,155.45");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=145.32,191.87");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=250.03,148.34");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=105.67,147.96");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=189.06,100.54");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=126.75,184.23");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=45.61,96.37");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=379.75,357.25");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=386.49,346.22");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=255.92,304.18");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=201.27,378.37");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=245.21,334.55");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=397.14,303.01");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=289.98,220.23");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=335.16,145.81");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=326.90,239.21");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=384.92,286.66");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=352.60,99.01");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=349.91,156.83");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=367.71,129.39");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=337.33,112.42");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=291.01,239.54");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=298.15,119.35");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=264.58,199.05");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=151.46,166.68");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=158.19,155.45");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=163.39,245.96");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=238.11,305.20");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=195.87,132.02");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=278.25,141.86");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=186.93,176.29");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=271.70,110.62");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=213.52,149.79");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=376.54,83.96");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=310.23,136.77");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=385.70,54.09");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=280.52,12.36");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=254.28,69.44");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=241.61,88.82");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=90.95,67.14");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=229.49,49.57");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=213.03,77.24");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=229.60,113.69");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=74.36,109.85");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=91.94,153.07");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=27.20,104.28");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=62.63,89.73");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=65.83,34.16");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=16.03,88.76");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=32.00,123.21");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=115.23,117.43");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=120.24,150.80");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=232.84,77.07");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=19.05,48.08");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=141.44,99.20");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=144.33,135.13");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=55.56,135.49");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=333.46,385.42");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=372.29,321.26");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=229.92,351.92");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=286.40,367.52");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=382.63,379.03");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=344.12,206.05");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=363.13,240.16");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=321.31,264.41");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=281.98,182.05");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=349.58,316.06");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=378.75,126.22");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=328.69,159.75");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=362.02,202.42");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=380.89,257.16");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=302.35,207.78");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=202.96,220.42");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=140.11,262.12");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=177.69,188.31");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=126.27,130.44");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=78.18,213.64");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=303.36,246.44");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=193.06,150.46");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=228.03,214.77");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=211.52,257.50");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=232.94,100.65");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=251.04,130.15");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=322.98,87.47");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=346.34,73.88");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=324.36,100.66");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=314.94,67.83");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=304.61,90.95");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=205.45,12.92");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=123.80,32.33");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=217.22,100.63");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=291.93,143.56");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=149.53,112.65");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=130.55,67.73");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=39.98,162.22");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=32.69,54.53");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=85.95,28.57");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=114.25,60.79");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=8.13,43.74");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=24.92,29.33");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=78.82,77.44");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=146.64,157.72");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=167.45,89.48");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=131.26,152.16");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=172.24,124.97");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=85.38,172.79");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=3.02,110.81");
    }

}

