
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM200-8
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
        @display("p=52.00,174.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=79.12,240.72");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=64.97,261.19");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=91.69,292.97");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=114.83,271.59");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=126.94,312.71");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=146.64,346.13");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=117.40,329.95");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=202.02,323.49");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=187.29,310.36");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=143.23,335.75");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=139.04,309.27");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=70.28,329.48");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=87.94,333.09");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=32.73,294.66");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=65.32,292.36");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=70.32,270.94");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=31.28,249.83");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=44.47,289.53");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=33.73,225.38");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=0.07,265.60");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=73.76,308.51");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=56.95,323.96");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=86.45,229.22");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=120.99,179.57");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=53.62,213.33");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=140.91,188.89");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=88.44,260.86");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=115.88,315.89");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=144.29,254.12");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=12.00,281.38");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=123.91,265.27");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=151.89,355.99");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=129.44,398.45");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=105.23,345.63");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=91.76,379.64");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=85.78,302.04");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=131.09,218.76");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=72.76,283.23");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=60.61,197.52");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=116.32,236.42");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=122.43,300.89");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=175.63,344.25");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=176.59,320.08");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=220.58,372.38");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=249.36,382.35");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=198.39,398.21");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=164.76,349.62");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=153.42,296.81");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=194.31,263.47");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=174.79,238.48");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=196.86,297.70");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=226.62,241.98");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=236.93,154.98");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=173.73,89.86");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=173.10,75.83");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=188.03,173.77");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=105.80,129.01");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=112.48,101.90");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=131.26,41.95");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=159.99,21.62");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=82.60,74.34");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=93.73,89.99");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=55.72,81.95");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=20.51,89.95");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=62.89,57.16");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=108.05,29.73");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=163.52,0.31");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=159.62,11.32");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=226.91,42.90");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=250.95,34.84");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=246.32,96.31");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=197.22,75.66");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=188.90,88.38");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=214.52,77.54");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=236.18,134.09");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=300.74,110.87");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=324.53,115.95");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=384.13,114.10");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=300.33,147.15");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=285.38,145.56");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=326.00,199.04");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=328.28,221.06");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=276.41,292.38");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=211.80,221.03");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=257.52,281.18");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=105.13,291.49");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=74.34,354.12");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=120.90,373.88");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=64.36,316.03");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=37.84,313.90");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=25.01,306.26");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=144.09,288.25");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=184.84,378.38");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=207.10,368.93");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=182.87,393.23");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=171.93,397.82");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=224.51,342.44");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=227.03,299.79");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=190.77,358.62");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=262.49,303.58");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=274.78,333.39");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=294.90,311.49");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=318.35,278.55");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=380.40,223.44");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=336.35,280.77");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=353.78,201.46");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=341.24,167.37");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=369.17,149.69");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=382.97,170.44");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=392.03,179.67");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=366.71,168.40");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=316.08,126.27");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=302.19,176.72");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=247.92,116.20");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=207.30,148.55");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=220.78,206.45");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=213.83,160.81");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=206.03,110.10");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=176.67,154.63");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=153.72,103.58");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=178.54,142.71");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=190.69,127.83");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=114.00,138.67");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=141.91,93.90");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=43.61,232.76");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=133.54,234.00");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=55.68,302.73");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=143.69,363.40");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=182.47,251.64");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=164.47,301.51");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=162.55,338.92");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=194.33,339.70");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=204.46,228.97");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=199.07,217.89");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=177.81,267.98");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=136.60,279.40");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=93.44,251.28");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=52.18,341.38");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=99.37,273.26");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=42.16,333.92");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=50.76,261.53");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=28.37,259.74");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=36.91,275.86");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=100.48,203.86");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=9.63,259.35");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=79.64,323.00");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=8.24,377.64");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=125.27,200.64");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=92.01,196.05");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=133.41,259.74");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=103.11,165.00");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=78.32,256.49");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=128.97,331.97");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=212.74,288.22");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=106.15,309.57");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=78.30,217.51");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=141.11,374.77");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=55.05,384.50");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=46.34,322.28");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=85.70,390.38");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=162.56,247.17");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=110.12,197.19");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=46.12,220.95");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=99.91,222.30");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=54.66,184.37");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=192.04,328.16");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=176.21,360.46");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=238.66,339.07");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=215.81,388.59");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=250.46,305.56");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=236.60,399.50");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=234.24,379.75");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=162.43,290.41");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=175.87,288.48");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=201.98,170.03");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=283.02,277.05");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=309.31,289.59");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=278.18,133.97");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=173.44,17.95");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=129.02,143.92");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=173.99,190.12");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=164.50,155.31");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=127.68,127.61");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=91.09,32.72");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=143.50,116.60");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=2.24,104.32");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=120.32,79.29");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=116.49,128.10");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=45.99,71.96");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=12.58,10.94");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=195.85,24.94");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=166.68,29.48");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=148.90,6.58");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=199.57,13.74");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=286.18,37.17");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=306.62,98.96");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=191.26,149.02");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=280.90,56.67");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=196.58,60.27");
    }

    host_lpn_201: <default("SensorNode")> like INetworkNode {
        @display("p=313.27,74.15");
    }

    host_lpn_202: <default("SensorNode")> like INetworkNode {
        @display("p=316.40,62.66");
    }

    host_lpn_203: <default("SensorNode")> like INetworkNode {
        @display("p=357.31,52.01");
    }

    host_lpn_204: <default("SensorNode")> like INetworkNode {
        @display("p=353.20,99.93");
    }

    host_lpn_205: <default("SensorNode")> like INetworkNode {
        @display("p=273.64,201.84");
    }

    host_lpn_206: <default("SensorNode")> like INetworkNode {
        @display("p=351.24,163.06");
    }

    host_lpn_207: <default("SensorNode")> like INetworkNode {
        @display("p=338.28,202.25");
    }

    host_lpn_208: <default("SensorNode")> like INetworkNode {
        @display("p=309.42,302.26");
    }

    host_lpn_209: <default("SensorNode")> like INetworkNode {
        @display("p=265.72,384.09");
    }

    host_lpn_210: <default("SensorNode")> like INetworkNode {
        @display("p=294.15,189.67");
    }

    host_lpn_211: <default("SensorNode")> like INetworkNode {
        @display("p=249.38,200.89");
    }

    host_lpn_212: <default("SensorNode")> like INetworkNode {
        @display("p=194.73,276.45");
    }

    host_lpn_213: <default("SensorNode")> like INetworkNode {
        @display("p=91.13,357.35");
    }

    host_lpn_214: <default("SensorNode")> like INetworkNode {
        @display("p=129.84,359.77");
    }

    host_lpn_215: <default("SensorNode")> like INetworkNode {
        @display("p=154.96,283.51");
    }

    host_lpn_216: <default("SensorNode")> like INetworkNode {
        @display("p=14.13,313.46");
    }

    host_lpn_217: <default("SensorNode")> like INetworkNode {
        @display("p=23.20,392.01");
    }

    host_lpn_218: <default("SensorNode")> like INetworkNode {
        @display("p=149.79,313.65");
    }

    host_lpn_219: <default("SensorNode")> like INetworkNode {
        @display("p=200.10,384.22");
    }

    host_lpn_220: <default("SensorNode")> like INetworkNode {
        @display("p=289.98,354.15");
    }

    host_lpn_221: <default("SensorNode")> like INetworkNode {
        @display("p=211.66,342.72");
    }

    host_lpn_222: <default("SensorNode")> like INetworkNode {
        @display("p=160.13,326.78");
    }

    host_lpn_223: <default("SensorNode")> like INetworkNode {
        @display("p=243.59,357.67");
    }

    host_lpn_224: <default("SensorNode")> like INetworkNode {
        @display("p=227.74,288.12");
    }

    host_lpn_225: <default("SensorNode")> like INetworkNode {
        @display("p=171.90,332.47");
    }

    host_lpn_226: <default("SensorNode")> like INetworkNode {
        @display("p=238.16,313.21");
    }

    host_lpn_227: <default("SensorNode")> like INetworkNode {
        @display("p=321.63,359.68");
    }

    host_lpn_228: <default("SensorNode")> like INetworkNode {
        @display("p=384.74,313.63");
    }

    host_lpn_229: <default("SensorNode")> like INetworkNode {
        @display("p=316.83,316.49");
    }

    host_lpn_230: <default("SensorNode")> like INetworkNode {
        @display("p=397.19,232.70");
    }

    host_lpn_231: <default("SensorNode")> like INetworkNode {
        @display("p=288.03,250.01");
    }

    host_lpn_232: <default("SensorNode")> like INetworkNode {
        @display("p=268.12,164.66");
    }

    host_lpn_233: <default("SensorNode")> like INetworkNode {
        @display("p=282.16,171.83");
    }

    host_lpn_234: <default("SensorNode")> like INetworkNode {
        @display("p=333.10,99.22");
    }

    host_lpn_235: <default("SensorNode")> like INetworkNode {
        @display("p=392.26,135.95");
    }

    host_lpn_236: <default("SensorNode")> like INetworkNode {
        @display("p=371.44,182.78");
    }

    host_lpn_237: <default("SensorNode")> like INetworkNode {
        @display("p=337.57,117.76");
    }

    host_lpn_238: <default("SensorNode")> like INetworkNode {
        @display("p=299.81,126.67");
    }

    host_lpn_239: <default("SensorNode")> like INetworkNode {
        @display("p=206.62,190.34");
    }

    host_lpn_240: <default("SensorNode")> like INetworkNode {
        @display("p=264.48,122.74");
    }

    host_lpn_241: <default("SensorNode")> like INetworkNode {
        @display("p=236.58,70.94");
    }

    host_lpn_242: <default("SensorNode")> like INetworkNode {
        @display("p=232.17,271.02");
    }

    host_lpn_243: <default("SensorNode")> like INetworkNode {
        @display("p=131.77,179.85");
    }

    host_lpn_244: <default("SensorNode")> like INetworkNode {
        @display("p=171.84,110.34");
    }

    host_lpn_245: <default("SensorNode")> like INetworkNode {
        @display("p=217.58,148.44");
    }

    host_lpn_246: <default("SensorNode")> like INetworkNode {
        @display("p=156.23,119.43");
    }

    host_lpn_247: <default("SensorNode")> like INetworkNode {
        @display("p=165.67,197.62");
    }

    host_lpn_248: <default("SensorNode")> like INetworkNode {
        @display("p=232.31,105.45");
    }

    host_lpn_249: <default("SensorNode")> like INetworkNode {
        @display("p=158.31,190.59");
    }

    host_lpn_250: <default("SensorNode")> like INetworkNode {
        @display("p=196.23,158.06");
    }

    host_lpn_251: <default("SensorNode")> like INetworkNode {
        @display("p=82.89,205.79");
    }

    host_lpn_252: <default("SensorNode")> like INetworkNode {
        @display("p=64.11,227.84");
    }

    host_lpn_253: <default("SensorNode")> like INetworkNode {
        @display("p=11.24,340.45");
    }

    host_lpn_254: <default("SensorNode")> like INetworkNode {
        @display("p=125.12,276.61");
    }

    host_lpn_255: <default("SensorNode")> like INetworkNode {
        @display("p=130.90,295.28");
    }

    host_lpn_256: <default("SensorNode")> like INetworkNode {
        @display("p=41.60,358.92");
    }

    host_lpn_257: <default("SensorNode")> like INetworkNode {
        @display("p=166.47,268.15");
    }

    host_lpn_258: <default("SensorNode")> like INetworkNode {
        @display("p=157.61,371.94");
    }

    host_lpn_259: <default("SensorNode")> like INetworkNode {
        @display("p=290.66,296.31");
    }

    host_lpn_260: <default("SensorNode")> like INetworkNode {
        @display("p=111.73,354.52");
    }

    host_lpn_261: <default("SensorNode")> like INetworkNode {
        @display("p=101.34,370.82");
    }

    host_lpn_262: <default("SensorNode")> like INetworkNode {
        @display("p=140.95,322.92");
    }

    host_lpn_263: <default("SensorNode")> like INetworkNode {
        @display("p=11.86,362.34");
    }

    host_lpn_264: <default("SensorNode")> like INetworkNode {
        @display("p=78.31,341.73");
    }

    host_lpn_265: <default("SensorNode")> like INetworkNode {
        @display("p=18.68,225.59");
    }

    host_lpn_266: <default("SensorNode")> like INetworkNode {
        @display("p=117.99,207.69");
    }

    host_lpn_267: <default("SensorNode")> like INetworkNode {
        @display("p=36.08,342.50");
    }

    host_lpn_268: <default("SensorNode")> like INetworkNode {
        @display("p=10.36,205.97");
    }

    host_lpn_269: <default("SensorNode")> like INetworkNode {
        @display("p=71.72,379.36");
    }

    host_lpn_270: <default("SensorNode")> like INetworkNode {
        @display("p=10.04,234.81");
    }

    host_lpn_271: <default("SensorNode")> like INetworkNode {
        @display("p=24.86,286.33");
    }

    host_lpn_272: <default("SensorNode")> like INetworkNode {
        @display("p=24.94,346.19");
    }

    host_lpn_273: <default("SensorNode")> like INetworkNode {
        @display("p=105.20,327.55");
    }

    host_lpn_274: <default("SensorNode")> like INetworkNode {
        @display("p=58.88,240.58");
    }

    host_lpn_275: <default("SensorNode")> like INetworkNode {
        @display("p=151.06,133.34");
    }

    host_lpn_276: <default("SensorNode")> like INetworkNode {
        @display("p=88.14,123.06");
    }

    host_lpn_277: <default("SensorNode")> like INetworkNode {
        @display("p=138.67,199.17");
    }

    host_lpn_278: <default("SensorNode")> like INetworkNode {
        @display("p=87.18,273.31");
    }

    host_lpn_279: <default("SensorNode")> like INetworkNode {
        @display("p=185.91,297.60");
    }

    host_lpn_280: <default("SensorNode")> like INetworkNode {
        @display("p=182.71,198.66");
    }

    host_lpn_281: <default("SensorNode")> like INetworkNode {
        @display("p=21.52,274.35");
    }

    host_lpn_282: <default("SensorNode")> like INetworkNode {
        @display("p=125.11,247.98");
    }

    host_lpn_283: <default("SensorNode")> like INetworkNode {
        @display("p=203.86,352.58");
    }

    host_lpn_284: <default("SensorNode")> like INetworkNode {
        @display("p=111.68,383.70");
    }

    host_lpn_285: <default("SensorNode")> like INetworkNode {
        @display("p=29.97,356.12");
    }

    host_lpn_286: <default("SensorNode")> like INetworkNode {
        @display("p=66.31,399.51");
    }

    host_lpn_287: <default("SensorNode")> like INetworkNode {
        @display("p=90.81,315.79");
    }

    host_lpn_288: <default("SensorNode")> like INetworkNode {
        @display("p=151.93,224.68");
    }

    host_lpn_289: <default("SensorNode")> like INetworkNode {
        @display("p=46.84,372.61");
    }

    host_lpn_290: <default("SensorNode")> like INetworkNode {
        @display("p=37.08,180.81");
    }

    host_lpn_291: <default("SensorNode")> like INetworkNode {
        @display("p=127.70,166.70");
    }

    host_lpn_292: <default("SensorNode")> like INetworkNode {
        @display("p=147.47,274.25");
    }

    host_lpn_293: <default("SensorNode")> like INetworkNode {
        @display("p=254.63,399.59");
    }

    host_lpn_294: <default("SensorNode")> like INetworkNode {
        @display("p=169.71,310.72");
    }

    host_lpn_295: <default("SensorNode")> like INetworkNode {
        @display("p=227.63,391.02");
    }

    host_lpn_296: <default("SensorNode")> like INetworkNode {
        @display("p=291.46,375.55");
    }

    host_lpn_297: <default("SensorNode")> like INetworkNode {
        @display("p=143.80,396.73");
    }

    host_lpn_298: <default("SensorNode")> like INetworkNode {
        @display("p=173.51,378.74");
    }

    host_lpn_299: <default("SensorNode")> like INetworkNode {
        @display("p=114.12,246.50");
    }

    host_lpn_300: <default("SensorNode")> like INetworkNode {
        @display("p=189.37,227.00");
    }

    host_lpn_301: <default("SensorNode")> like INetworkNode {
        @display("p=187.73,214.94");
    }

    host_lpn_302: <default("SensorNode")> like INetworkNode {
        @display("p=250.60,245.26");
    }

    host_lpn_303: <default("SensorNode")> like INetworkNode {
        @display("p=210.03,238.21");
    }

    host_lpn_304: <default("SensorNode")> like INetworkNode {
        @display("p=172.40,131.92");
    }

    host_lpn_305: <default("SensorNode")> like INetworkNode {
        @display("p=213.69,172.91");
    }

    host_lpn_306: <default("SensorNode")> like INetworkNode {
        @display("p=238.39,28.39");
    }

    host_lpn_307: <default("SensorNode")> like INetworkNode {
        @display("p=197.65,136.75");
    }

    host_lpn_308: <default("SensorNode")> like INetworkNode {
        @display("p=13.13,113.57");
    }

    host_lpn_309: <default("SensorNode")> like INetworkNode {
        @display("p=141.89,73.93");
    }

    host_lpn_310: <default("SensorNode")> like INetworkNode {
        @display("p=120.73,7.74");
    }

    host_lpn_311: <default("SensorNode")> like INetworkNode {
        @display("p=70.97,3.72");
    }

    host_lpn_312: <default("SensorNode")> like INetworkNode {
        @display("p=103.85,54.13");
    }

    host_lpn_313: <default("SensorNode")> like INetworkNode {
        @display("p=104.60,90.61");
    }

    host_lpn_314: <default("SensorNode")> like INetworkNode {
        @display("p=71.45,80.44");
    }

    host_lpn_315: <default("SensorNode")> like INetworkNode {
        @display("p=36.14,58.07");
    }

    host_lpn_316: <default("SensorNode")> like INetworkNode {
        @display("p=48.76,97.46");
    }

    host_lpn_317: <default("SensorNode")> like INetworkNode {
        @display("p=96.57,72.70");
    }

    host_lpn_318: <default("SensorNode")> like INetworkNode {
        @display("p=182.83,8.90");
    }

    host_lpn_319: <default("SensorNode")> like INetworkNode {
        @display("p=210.73,30.55");
    }

    host_lpn_320: <default("SensorNode")> like INetworkNode {
        @display("p=217.70,88.92");
    }

    host_lpn_321: <default("SensorNode")> like INetworkNode {
        @display("p=262.32,33.83");
    }

    host_lpn_322: <default("SensorNode")> like INetworkNode {
        @display("p=256.38,109.95");
    }

    host_lpn_323: <default("SensorNode")> like INetworkNode {
        @display("p=291.00,92.34");
    }

    host_lpn_324: <default("SensorNode")> like INetworkNode {
        @display("p=167.78,180.57");
    }

    host_lpn_325: <default("SensorNode")> like INetworkNode {
        @display("p=249.20,69.74");
    }

    host_lpn_326: <default("SensorNode")> like INetworkNode {
        @display("p=185.84,162.95");
    }

    host_lpn_327: <default("SensorNode")> like INetworkNode {
        @display("p=358.84,146.32");
    }

    host_lpn_328: <default("SensorNode")> like INetworkNode {
        @display("p=358.88,127.72");
    }

    host_lpn_329: <default("SensorNode")> like INetworkNode {
        @display("p=364.72,87.79");
    }

    host_lpn_330: <default("SensorNode")> like INetworkNode {
        @display("p=295.23,156.34");
    }

    host_lpn_331: <default("SensorNode")> like INetworkNode {
        @display("p=261.82,184.23");
    }

    host_lpn_332: <default("SensorNode")> like INetworkNode {
        @display("p=361.24,267.29");
    }

    host_lpn_333: <default("SensorNode")> like INetworkNode {
        @display("p=356.14,257.39");
    }

    host_lpn_334: <default("SensorNode")> like INetworkNode {
        @display("p=271.02,366.26");
    }

    host_lpn_335: <default("SensorNode")> like INetworkNode {
        @display("p=265.15,259.39");
    }

    host_lpn_336: <default("SensorNode")> like INetworkNode {
        @display("p=244.31,256.12");
    }

    host_lpn_337: <default("SensorNode")> like INetworkNode {
        @display("p=83.59,285.69");
    }

    host_lpn_338: <default("SensorNode")> like INetworkNode {
        @display("p=35.43,391.22");
    }

    host_lpn_339: <default("SensorNode")> like INetworkNode {
        @display("p=44.45,397.74");
    }

    host_lpn_340: <default("SensorNode")> like INetworkNode {
        @display("p=35.69,377.61");
    }

    host_lpn_341: <default("SensorNode")> like INetworkNode {
        @display("p=50.18,275.70");
    }

    host_lpn_342: <default("SensorNode")> like INetworkNode {
        @display("p=0.81,276.25");
    }

    host_lpn_343: <default("SensorNode")> like INetworkNode {
        @display("p=116.21,342.42");
    }

    host_lpn_344: <default("SensorNode")> like INetworkNode {
        @display("p=252.66,349.91");
    }

    host_lpn_345: <default("SensorNode")> like INetworkNode {
        @display("p=243.05,296.48");
    }

    host_lpn_346: <default("SensorNode")> like INetworkNode {
        @display("p=244.88,368.07");
    }

    host_lpn_347: <default("SensorNode")> like INetworkNode {
        @display("p=96.34,395.20");
    }

    host_lpn_348: <default("SensorNode")> like INetworkNode {
        @display("p=207.66,299.56");
    }

    host_lpn_349: <default("SensorNode")> like INetworkNode {
        @display("p=314.36,334.64");
    }

    host_lpn_350: <default("SensorNode")> like INetworkNode {
        @display("p=224.37,329.23");
    }

    host_lpn_351: <default("SensorNode")> like INetworkNode {
        @display("p=339.85,321.49");
    }

    host_lpn_352: <default("SensorNode")> like INetworkNode {
        @display("p=327.77,345.82");
    }

    host_lpn_353: <default("SensorNode")> like INetworkNode {
        @display("p=287.97,326.77");
    }

    host_lpn_354: <default("SensorNode")> like INetworkNode {
        @display("p=277.06,319.44");
    }

    host_lpn_355: <default("SensorNode")> like INetworkNode {
        @display("p=373.45,242.21");
    }

    host_lpn_356: <default("SensorNode")> like INetworkNode {
        @display("p=279.01,347.36");
    }

    host_lpn_357: <default("SensorNode")> like INetworkNode {
        @display("p=277.65,213.15");
    }

    host_lpn_358: <default("SensorNode")> like INetworkNode {
        @display("p=334.61,138.94");
    }

    host_lpn_359: <default("SensorNode")> like INetworkNode {
        @display("p=374.85,88.07");
    }

    host_lpn_360: <default("SensorNode")> like INetworkNode {
        @display("p=347.18,151.56");
    }

    host_lpn_361: <default("SensorNode")> like INetworkNode {
        @display("p=306.64,138.01");
    }

    host_lpn_362: <default("SensorNode")> like INetworkNode {
        @display("p=323.43,173.82");
    }

    host_lpn_363: <default("SensorNode")> like INetworkNode {
        @display("p=289.25,118.53");
    }

    host_lpn_364: <default("SensorNode")> like INetworkNode {
        @display("p=297.55,244.44");
    }

    host_lpn_365: <default("SensorNode")> like INetworkNode {
        @display("p=277.47,190.76");
    }

    host_lpn_366: <default("SensorNode")> like INetworkNode {
        @display("p=165.01,215.15");
    }

    host_lpn_367: <default("SensorNode")> like INetworkNode {
        @display("p=197.10,195.56");
    }

    host_lpn_368: <default("SensorNode")> like INetworkNode {
        @display("p=308.66,191.94");
    }

    host_lpn_369: <default("SensorNode")> like INetworkNode {
        @display("p=269.46,153.34");
    }

    host_lpn_370: <default("SensorNode")> like INetworkNode {
        @display("p=117.43,158.50");
    }

    host_lpn_371: <default("SensorNode")> like INetworkNode {
        @display("p=162.60,78.70");
    }

    host_lpn_372: <default("SensorNode")> like INetworkNode {
        @display("p=198.92,180.43");
    }

    host_lpn_373: <default("SensorNode")> like INetworkNode {
        @display("p=187.53,111.09");
    }

    host_lpn_374: <default("SensorNode")> like INetworkNode {
        @display("p=113.48,71.46");
    }

    host_lpn_375: <default("SensorNode")> like INetworkNode {
        @display("p=120.17,27.76");
    }

    host_lpn_376: <default("SensorNode")> like INetworkNode {
        @display("p=36.77,157.14");
    }

    host_lpn_377: <default("SensorNode")> like INetworkNode {
        @display("p=50.14,150.38");
    }

    host_lpn_378: <default("SensorNode")> like INetworkNode {
        @display("p=65.95,348.64");
    }

    host_lpn_379: <default("SensorNode")> like INetworkNode {
        @display("p=21.49,336.57");
    }

    host_lpn_380: <default("SensorNode")> like INetworkNode {
        @display("p=48.34,247.90");
    }

    host_lpn_381: <default("SensorNode")> like INetworkNode {
        @display("p=123.67,350.80");
    }

    host_lpn_382: <default("SensorNode")> like INetworkNode {
        @display("p=218.65,362.45");
    }

    host_lpn_383: <default("SensorNode")> like INetworkNode {
        @display("p=55.36,289.02");
    }

    host_lpn_384: <default("SensorNode")> like INetworkNode {
        @display("p=203.51,312.81");
    }

    host_lpn_385: <default("SensorNode")> like INetworkNode {
        @display("p=194.46,369.22");
    }

    host_lpn_386: <default("SensorNode")> like INetworkNode {
        @display("p=146.10,385.45");
    }

    host_lpn_387: <default("SensorNode")> like INetworkNode {
        @display("p=198.27,244.47");
    }

    host_lpn_388: <default("SensorNode")> like INetworkNode {
        @display("p=24.76,365.29");
    }

    host_lpn_389: <default("SensorNode")> like INetworkNode {
        @display("p=135.52,384.21");
    }

    host_lpn_390: <default("SensorNode")> like INetworkNode {
        @display("p=96.86,303.69");
    }

    host_lpn_391: <default("SensorNode")> like INetworkNode {
        @display("p=21.84,243.93");
    }

    host_lpn_392: <default("SensorNode")> like INetworkNode {
        @display("p=66.89,184.39");
    }

    host_lpn_393: <default("SensorNode")> like INetworkNode {
        @display("p=15.61,214.86");
    }

    host_lpn_394: <default("SensorNode")> like INetworkNode {
        @display("p=34.11,325.70");
    }

    host_lpn_395: <default("SensorNode")> like INetworkNode {
        @display("p=40.79,263.43");
    }

    host_lpn_396: <default("SensorNode")> like INetworkNode {
        @display("p=28.42,192.39");
    }

    host_lpn_397: <default("SensorNode")> like INetworkNode {
        @display("p=77.06,294.06");
    }

    host_lpn_398: <default("SensorNode")> like INetworkNode {
        @display("p=110.23,257.90");
    }

    host_lpn_399: <default("SensorNode")> like INetworkNode {
        @display("p=142.80,169.82");
    }

    host_lpn_400: <default("SensorNode")> like INetworkNode {
        @display("p=177.47,228.25");
    }

    host_lpn_401: <default("SensorNode")> like INetworkNode {
        @display("p=36.99,167.87");
    }

    host_lpn_402: <default("SensorNode")> like INetworkNode {
        @display("p=111.20,185.79");
    }

    host_lpn_403: <default("SensorNode")> like INetworkNode {
        @display("p=121.56,224.50");
    }

    host_lpn_404: <default("SensorNode")> like INetworkNode {
        @display("p=63.21,366.68");
    }

    host_lpn_405: <default("SensorNode")> like INetworkNode {
        @display("p=98.04,185.17");
    }

    host_lpn_406: <default("SensorNode")> like INetworkNode {
        @display("p=4.09,287.81");
    }

    host_lpn_407: <default("SensorNode")> like INetworkNode {
        @display("p=214.73,265.83");
    }

    host_lpn_408: <default("SensorNode")> like INetworkNode {
        @display("p=110.76,364.87");
    }

    host_lpn_409: <default("SensorNode")> like INetworkNode {
        @display("p=54.61,356.07");
    }

    host_lpn_410: <default("SensorNode")> like INetworkNode {
        @display("p=101.36,355.42");
    }

    host_lpn_411: <default("SensorNode")> like INetworkNode {
        @display("p=1.76,350.31");
    }

    host_lpn_412: <default("SensorNode")> like INetworkNode {
        @display("p=45.86,306.23");
    }

    host_lpn_413: <default("SensorNode")> like INetworkNode {
        @display("p=78.78,173.78");
    }

    host_lpn_414: <default("SensorNode")> like INetworkNode {
        @display("p=109.45,280.46");
    }

    host_lpn_415: <default("SensorNode")> like INetworkNode {
        @display("p=2.02,137.55");
    }

    host_lpn_416: <default("SensorNode")> like INetworkNode {
        @display("p=174.22,210.39");
    }

    host_lpn_417: <default("SensorNode")> like INetworkNode {
        @display("p=94.07,345.43");
    }

    host_lpn_418: <default("SensorNode")> like INetworkNode {
        @display("p=259.66,321.89");
    }

    host_lpn_419: <default("SensorNode")> like INetworkNode {
        @display("p=219.24,250.12");
    }

    host_lpn_420: <default("SensorNode")> like INetworkNode {
        @display("p=212.75,331.39");
    }

    host_lpn_421: <default("SensorNode")> like INetworkNode {
        @display("p=334.72,383.75");
    }

    host_lpn_422: <default("SensorNode")> like INetworkNode {
        @display("p=259.40,370.07");
    }

    host_lpn_423: <default("SensorNode")> like INetworkNode {
        @display("p=232.57,353.42");
    }

    host_lpn_424: <default("SensorNode")> like INetworkNode {
        @display("p=165.39,279.88");
    }

    host_lpn_425: <default("SensorNode")> like INetworkNode {
        @display("p=164.38,168.47");
    }

    host_lpn_426: <default("SensorNode")> like INetworkNode {
        @display("p=254.19,235.81");
    }

    host_lpn_427: <default("SensorNode")> like INetworkNode {
        @display("p=239.18,323.94");
    }

    host_lpn_428: <default("SensorNode")> like INetworkNode {
        @display("p=222.03,167.33");
    }

    host_lpn_429: <default("SensorNode")> like INetworkNode {
        @display("p=219.17,118.34");
    }

    host_lpn_430: <default("SensorNode")> like INetworkNode {
        @display("p=199.55,92.75");
    }

    host_lpn_431: <default("SensorNode")> like INetworkNode {
        @display("p=214.92,10.63");
    }

    host_lpn_432: <default("SensorNode")> like INetworkNode {
        @display("p=226.67,140.17");
    }

    host_lpn_433: <default("SensorNode")> like INetworkNode {
        @display("p=103.49,117.88");
    }

    host_lpn_434: <default("SensorNode")> like INetworkNode {
        @display("p=149.76,148.21");
    }

    host_lpn_435: <default("SensorNode")> like INetworkNode {
        @display("p=140.51,32.37");
    }

    host_lpn_436: <default("SensorNode")> like INetworkNode {
        @display("p=182.29,42.53");
    }

    host_lpn_437: <default("SensorNode")> like INetworkNode {
        @display("p=121.89,89.38");
    }

    host_lpn_438: <default("SensorNode")> like INetworkNode {
        @display("p=1.71,59.98");
    }

    host_lpn_439: <default("SensorNode")> like INetworkNode {
        @display("p=68.65,92.20");
    }

    host_lpn_440: <default("SensorNode")> like INetworkNode {
        @display("p=30.81,89.32");
    }

    host_lpn_441: <default("SensorNode")> like INetworkNode {
        @display("p=79.61,48.08");
    }

    host_lpn_442: <default("SensorNode")> like INetworkNode {
        @display("p=35.57,14.79");
    }

    host_lpn_443: <default("SensorNode")> like INetworkNode {
        @display("p=174.71,57.32");
    }

    host_lpn_444: <default("SensorNode")> like INetworkNode {
        @display("p=135.92,18.24");
    }

    host_lpn_445: <default("SensorNode")> like INetworkNode {
        @display("p=159.01,53.13");
    }

    host_lpn_446: <default("SensorNode")> like INetworkNode {
        @display("p=224.56,32.63");
    }

    host_lpn_447: <default("SensorNode")> like INetworkNode {
        @display("p=244.82,183.52");
    }

    host_lpn_448: <default("SensorNode")> like INetworkNode {
        @display("p=225.26,13.90");
    }

    host_lpn_449: <default("SensorNode")> like INetworkNode {
        @display("p=213.34,99.25");
    }

    host_lpn_450: <default("SensorNode")> like INetworkNode {
        @display("p=230.00,95.05");
    }

    host_lpn_451: <default("SensorNode")> like INetworkNode {
        @display("p=236.78,208.38");
    }

    host_lpn_452: <default("SensorNode")> like INetworkNode {
        @display("p=337.05,54.03");
    }

    host_lpn_453: <default("SensorNode")> like INetworkNode {
        @display("p=305.70,203.48");
    }

    host_lpn_454: <default("SensorNode")> like INetworkNode {
        @display("p=371.07,108.59");
    }

    host_lpn_455: <default("SensorNode")> like INetworkNode {
        @display("p=384.43,193.50");
    }

    host_lpn_456: <default("SensorNode")> like INetworkNode {
        @display("p=218.09,134.96");
    }

    host_lpn_457: <default("SensorNode")> like INetworkNode {
        @display("p=382.18,266.50");
    }

    host_lpn_458: <default("SensorNode")> like INetworkNode {
        @display("p=312.17,240.98");
    }

    host_lpn_459: <default("SensorNode")> like INetworkNode {
        @display("p=261.21,291.88");
    }

    host_lpn_460: <default("SensorNode")> like INetworkNode {
        @display("p=234.33,190.38");
    }

    host_lpn_461: <default("SensorNode")> like INetworkNode {
        @display("p=242.49,281.63");
    }

    host_lpn_462: <default("SensorNode")> like INetworkNode {
        @display("p=101.52,236.06");
    }

    host_lpn_463: <default("SensorNode")> like INetworkNode {
        @display("p=73.80,364.51");
    }

    host_lpn_464: <default("SensorNode")> like INetworkNode {
        @display("p=119.42,391.20");
    }

    host_lpn_465: <default("SensorNode")> like INetworkNode {
        @display("p=0.62,327.10");
    }

    host_lpn_466: <default("SensorNode")> like INetworkNode {
        @display("p=17.30,292.92");
    }

    host_lpn_467: <default("SensorNode")> like INetworkNode {
        @display("p=15.27,323.88");
    }

    host_lpn_468: <default("SensorNode")> like INetworkNode {
        @display("p=153.96,261.19");
    }

    host_lpn_469: <default("SensorNode")> like INetworkNode {
        @display("p=165.52,387.83");
    }

    host_lpn_470: <default("SensorNode")> like INetworkNode {
        @display("p=264.03,343.68");
    }

    host_lpn_471: <default("SensorNode")> like INetworkNode {
        @display("p=157.69,397.44");
    }

    host_lpn_472: <default("SensorNode")> like INetworkNode {
        @display("p=214.71,308.40");
    }

    host_lpn_473: <default("SensorNode")> like INetworkNode {
        @display("p=228.00,314.73");
    }

    host_lpn_474: <default("SensorNode")> like INetworkNode {
        @display("p=266.31,209.26");
    }

    host_lpn_475: <default("SensorNode")> like INetworkNode {
        @display("p=207.08,274.98");
    }

    host_lpn_476: <default("SensorNode")> like INetworkNode {
        @display("p=341.23,298.84");
    }

    host_lpn_477: <default("SensorNode")> like INetworkNode {
        @display("p=308.96,368.45");
    }

    host_lpn_478: <default("SensorNode")> like INetworkNode {
        @display("p=357.20,279.50");
    }

    host_lpn_479: <default("SensorNode")> like INetworkNode {
        @display("p=326.25,298.79");
    }

    host_lpn_480: <default("SensorNode")> like INetworkNode {
        @display("p=385.36,235.70");
    }

    host_lpn_481: <default("SensorNode")> like INetworkNode {
        @display("p=333.32,270.52");
    }

    host_lpn_482: <default("SensorNode")> like INetworkNode {
        @display("p=287.83,202.29");
    }

    host_lpn_483: <default("SensorNode")> like INetworkNode {
        @display("p=330.38,165.66");
    }

    host_lpn_484: <default("SensorNode")> like INetworkNode {
        @display("p=300.31,84.34");
    }

    host_lpn_485: <default("SensorNode")> like INetworkNode {
        @display("p=399.22,169.56");
    }

    host_lpn_486: <default("SensorNode")> like INetworkNode {
        @display("p=340.41,188.90");
    }

    host_lpn_487: <default("SensorNode")> like INetworkNode {
        @display("p=285.22,157.59");
    }

    host_lpn_488: <default("SensorNode")> like INetworkNode {
        @display("p=311.23,165.30");
    }

    host_lpn_489: <default("SensorNode")> like INetworkNode {
        @display("p=269.43,88.81");
    }

    host_lpn_490: <default("SensorNode")> like INetworkNode {
        @display("p=186.83,187.47");
    }

    host_lpn_491: <default("SensorNode")> like INetworkNode {
        @display("p=217.07,63.39");
    }

    host_lpn_492: <default("SensorNode")> like INetworkNode {
        @display("p=276.76,246.05");
    }

    host_lpn_493: <default("SensorNode")> like INetworkNode {
        @display("p=143.50,218.96");
    }

    host_lpn_494: <default("SensorNode")> like INetworkNode {
        @display("p=205.35,125.99");
    }

    host_lpn_495: <default("SensorNode")> like INetworkNode {
        @display("p=236.43,218.94");
    }

    host_lpn_496: <default("SensorNode")> like INetworkNode {
        @display("p=181.86,98.86");
    }

    host_lpn_497: <default("SensorNode")> like INetworkNode {
        @display("p=94.37,136.51");
    }

    host_lpn_498: <default("SensorNode")> like INetworkNode {
        @display("p=248.39,127.10");
    }

    host_lpn_499: <default("SensorNode")> like INetworkNode {
        @display("p=75.50,130.07");
    }

    host_lpn_500: <default("SensorNode")> like INetworkNode {
        @display("p=128.41,59.21");
    }

}

