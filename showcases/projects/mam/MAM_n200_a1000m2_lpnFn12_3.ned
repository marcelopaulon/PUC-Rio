
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_3
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=108.31,76.78");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=149.19,118.81");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=160.54,65.41");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=194.73,137.20");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=219.37,176.00");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=134.33,226.50");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=113.11,218.32");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=83.70,205.73");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=85.12,187.89");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=133.91,246.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=131.58,325.61");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=97.43,297.74");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=4.92,291.50");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=45.23,322.98");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=27.78,361.65");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=9.32,359.85");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=124.31,177.74");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=57.97,151.06");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=146.04,107.56");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=160.45,82.14");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=199.86,116.33");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=227.08,184.43");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=107.59,131.03");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=72.88,263.34");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=96.06,213.35");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=25.31,267.40");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=65.35,255.97");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=62.28,358.64");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=150.60,301.44");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=17.84,301.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=24.01,403.37");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=45.29,443.91");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=56.19,318.19");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=101.58,112.31");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=85.40,145.55");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=170.21,62.57");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=141.32,162.75");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=188.13,127.99");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=295.90,190.28");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=93.29,178.48");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=19.33,196.56");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=135.59,192.79");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=37.51,240.64");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=75.12,249.59");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=160.57,232.46");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=111.01,296.83");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=1.59,384.58");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=53.62,330.77");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=65.65,404.05");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=51.20,423.23");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=28.55,140.32");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=106.58,23.48");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=119.51,136.64");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=159.71,97.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=238.77,121.85");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=205.21,161.85");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=166.09,241.68");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=91.03,127.94");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=60.85,219.19");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=134.49,130.62");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=122.28,258.68");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=90.75,344.37");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=158.79,323.83");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=21.52,289.62");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=62.98,294.58");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=34.59,448.54");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=48.40,374.65");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=84.20,22.38");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=109.07,42.97");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=100.60,87.90");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=82.15,45.01");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=252.57,62.05");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=145.13,129.01");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=107.61,233.24");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=117.28,244.46");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=31.44,160.36");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=104.74,268.05");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=163.94,261.63");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=161.92,381.89");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=90.29,305.87");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=12.81,235.49");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=75.42,318.13");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=39.52,413.91");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=31.30,319.56");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=55.24,63.84");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=129.58,93.17");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=116.68,115.36");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=182.69,9.82");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=180.42,134.64");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=260.70,182.12");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=65.17,240.44");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=45.56,258.19");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=60.59,141.12");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=23.59,176.27");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=152.90,248.10");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=133.19,340.86");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=125.18,299.29");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=2.94,252.27");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=34.57,394.21");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=69.20,309.72");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=10.34,371.60");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=42.17,42.32");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=121.28,68.29");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=181.40,172.13");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=204.70,42.61");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=151.72,73.88");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=130.60,152.12");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=126.45,233.12");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=194.66,237.13");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=90.67,273.36");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=161.41,213.91");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=149.92,171.56");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=148.31,321.60");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=146.64,270.65");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=18.19,257.75");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=20.78,377.09");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=38.90,347.04");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=27.52,426.33");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=57.25,88.42");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=147.44,46.72");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=218.93,79.92");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=122.78,28.72");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=177.66,217.54");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=235.21,131.45");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=95.28,251.62");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=39.30,272.83");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=97.17,197.27");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=75.51,195.52");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=223.80,207.78");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=225.98,304.33");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=41.98,294.73");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=3.29,305.10");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=24.85,241.62");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=0.36,403.91");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=90.65,370.03");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=123.49,57.54");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=82.13,77.06");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=128.67,115.17");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=225.88,98.86");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=185.67,116.46");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=186.01,200.28");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=145.66,197.83");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=136.45,259.88");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=106.37,204.47");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=3.33,166.51");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=177.70,249.71");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=86.69,322.53");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=123.86,374.54");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=32.19,290.33");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=30.27,229.62");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=72.89,415.63");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=68.03,330.78");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=110.68,62.62");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=94.97,42.97");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=99.28,162.83");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=169.22,31.34");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=207.39,138.64");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=240.84,157.99");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=60.96,164.40");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=134.72,207.62");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=52.27,297.03");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=155.14,186.72");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=154.76,148.45");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=117.67,346.45");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=47.91,278.72");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=84.12,333.72");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=50.17,308.93");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=51.50,356.21");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=21.34,349.19");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=9.63,68.04");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=100.31,58.82");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=196.77,50.77");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=103.19,144.59");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=173.25,49.74");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=282.55,228.94");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=203.71,281.80");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=109.79,185.73");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=2.91,210.84");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=51.86,118.86");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=155.49,290.81");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=142.49,279.96");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=170.77,279.09");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=47.09,227.04");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=70.15,351.80");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=38.69,380.72");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=12.11,394.35");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=164.47,134.04");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=71.20,143.98");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=113.75,33.35");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=203.88,104.10");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=250.78,96.90");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=266.51,111.79");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=149.48,213.37");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=142.04,147.35");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=83.87,225.59");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=38.83,115.87");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=54.73,197.00");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=187.55,259.57");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=113.16,284.78");
    }

}

