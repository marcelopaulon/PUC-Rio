
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_3
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=85.62,294.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=126.45,303.76");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=164.82,247.04");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=184.39,325.15");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=207.61,313.61");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=266.02,264.78");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=265.53,285.12");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=198.53,329.53");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=114.27,313.70");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=125.26,329.53");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=108.88,363.10");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=68.22,333.13");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=74.69,341.41");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=79.20,353.15");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=76.79,380.26");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=72.55,369.42");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=44.10,304.65");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=22.03,350.56");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=36.22,383.24");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=52.85,385.78");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=163.19,282.82");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=220.05,255.39");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=267.94,198.02");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=259.72,206.87");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=146.46,303.98");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=45.64,346.10");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=92.10,314.64");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=154.65,244.72");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=184.69,346.51");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=226.76,313.03");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=340.80,249.59");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=257.84,368.53");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=247.01,314.74");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=189.91,316.50");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=147.17,351.99");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=137.08,334.77");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=74.93,265.41");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=11.33,298.48");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=127.21,345.97");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=101.34,324.60");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=88.78,363.22");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=8.61,227.60");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=19.89,324.94");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=28.52,399.42");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=69.70,388.53");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=214.21,273.82");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=294.57,295.39");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=212.19,167.18");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=292.84,120.81");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=102.75,285.65");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=3.88,331.44");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=38.47,320.63");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=136.92,264.18");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=148.07,362.01");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=186.69,287.89");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=261.38,171.14");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=269.94,274.55");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=139.14,311.83");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=59.08,260.52");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=205.04,339.42");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=102.70,380.47");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=142.68,288.44");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=45.23,375.81");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=88.55,373.94");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=116.72,385.87");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=115.03,345.39");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=8.96,370.22");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=34.86,335.57");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=103.77,391.17");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=17.53,390.23");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=132.25,246.22");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=234.08,183.33");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=192.52,173.68");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=345.52,160.55");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=122.40,362.20");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=87.07,334.25");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=224.06,295.14");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=154.44,234.17");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=158.77,376.85");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=212.91,323.71");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=285.97,337.66");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=290.64,258.38");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=273.41,376.23");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=163.35,352.36");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=156.46,316.19");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=115.04,374.42");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=96.70,348.94");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=71.02,251.86");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=124.73,317.85");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=75.83,309.31");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=4.38,313.76");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=49.86,209.77");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=60.76,309.36");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=20.87,374.52");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=1.32,389.56");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=118.80,282.44");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=232.12,160.49");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=304.39,246.18");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=278.78,146.02");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=159.10,301.37");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=31.71,228.47");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=131.50,368.61");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=217.27,189.59");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=209.36,352.74");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=227.69,341.78");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=314.93,266.10");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=217.54,286.31");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=240.92,360.61");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=177.19,262.96");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=141.38,277.83");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=28.24,311.08");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=28.53,288.15");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=167.50,336.71");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=62.15,373.20");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=90.18,386.07");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=59.95,362.75");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=75.01,285.76");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=1.97,291.01");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=52.77,320.95");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=88.65,396.98");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=162.55,264.25");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=206.56,205.45");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=183.99,226.92");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=275.59,236.32");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=196.66,292.79");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=51.01,282.18");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=52.73,241.56");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=137.13,196.92");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=151.25,339.49");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=169.57,232.76");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=323.74,278.53");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=189.83,236.49");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=263.95,386.02");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=111.38,269.61");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=148.57,323.63");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=151.87,386.86");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=86.04,279.40");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=99.18,269.76");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=52.45,398.28");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=128.55,382.85");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=98.67,360.31");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=118.71,244.26");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=4.74,344.69");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=38.63,398.30");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=79.48,392.31");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=153.74,277.97");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=147.48,264.83");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=292.32,229.83");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=263.95,234.13");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=40.14,255.23");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=17.43,237.53");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=130.55,285.79");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=108.46,255.13");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=215.49,375.17");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=215.62,362.29");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=171.89,273.31");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=270.09,301.83");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=194.20,378.62");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=43.48,355.91");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=195.92,399.45");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=192.51,355.59");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=102.68,336.65");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=58.61,342.34");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=94.69,257.12");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=54.86,292.65");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=32.75,357.07");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=89.71,237.64");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=30.54,368.21");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=2.73,378.91");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=103.24,310.08");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=193.82,264.97");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=198.46,280.76");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=229.99,213.14");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=277.13,159.32");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=176.78,331.65");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=121.74,265.89");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=75.01,231.86");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=136.76,215.77");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=270.07,334.11");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=251.84,269.81");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=278.05,289.68");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=187.93,256.36");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=295.90,309.40");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=17.45,290.17");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=168.40,394.95");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=173.13,306.95");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=43.43,290.23");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=64.39,287.61");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=48.71,334.20");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=169.58,367.15");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=113.06,300.34");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=80.61,255.65");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=16.35,341.82");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=10.82,357.38");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=67.03,317.56");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=186.43,371.90");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=303.42,215.75");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=291.41,204.14");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=202.45,249.40");
    }

}

