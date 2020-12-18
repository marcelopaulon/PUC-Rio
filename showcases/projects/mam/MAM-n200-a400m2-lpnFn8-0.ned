
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn8-0
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
        @display("p=92.00,262.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=78.23,335.59");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=88.99,292.14");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=106.35,307.29");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=56.82,293.33");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=80.73,389.63");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=35.34,342.81");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=60.83,340.67");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=90.71,360.67");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=175.24,320.67");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=154.25,282.59");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=100.62,295.90");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=86.30,373.76");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=45.62,343.12");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=47.96,355.91");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=67.40,370.64");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=4.80,338.14");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=66.71,260.43");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=61.00,244.51");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=29.27,257.62");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=64.31,229.48");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=109.58,259.59");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=131.14,268.54");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=95.48,198.77");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=63.95,163.01");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=119.41,210.53");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=97.15,343.55");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=75.58,254.68");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=146.12,345.65");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=34.40,282.98");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=65.02,398.38");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=23.71,338.30");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=5.80,389.74");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=67.19,351.32");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=177.12,282.60");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=218.22,261.06");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=104.48,246.11");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=115.68,382.43");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=3.52,376.08");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=85.07,305.91");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=58.41,360.59");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=2.94,321.22");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=133.63,334.73");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=122.82,231.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=4.86,173.25");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=152.40,224.43");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=63.75,327.40");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=140.19,181.38");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=129.95,158.64");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=71.99,120.04");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=32.01,233.92");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=47.08,253.45");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=128.48,315.97");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=115.78,327.52");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=29.81,314.71");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=102.11,319.13");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=104.69,384.48");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=102.49,332.65");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=94.45,381.11");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=191.78,277.79");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=148.29,249.68");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=153.94,270.51");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=47.94,392.15");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=10.28,283.47");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=8.37,355.55");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=115.02,293.23");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=34.55,327.77");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=40.95,308.59");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=83.98,246.06");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=66.22,278.99");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=4.91,194.66");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=79.47,270.42");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=216.32,218.77");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=82.70,171.31");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=102.57,134.25");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=141.11,289.46");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=76.81,315.82");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=114.23,272.45");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=186.91,248.31");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=71.97,296.52");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=167.84,394.86");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=37.87,355.14");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=15.33,260.54");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=128.25,282.35");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=230.38,357.89");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=83.49,282.15");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=62.01,211.56");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=124.69,342.66");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=23.46,292.60");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=26.19,348.77");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=34.95,376.21");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=22.67,322.92");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=48.61,320.01");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=1.79,295.34");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=35.52,245.72");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=70.97,219.29");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=94.91,240.44");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=150.37,173.27");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=127.85,218.80");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=75.44,235.34");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=95.54,277.00");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=50.61,329.95");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=153.52,312.24");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=195.12,291.05");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=47.41,273.23");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=146.37,397.06");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=2.73,249.27");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=95.37,391.19");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=160.34,355.07");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=205.99,288.51");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=239.48,301.62");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=124.85,246.21");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=149.48,357.23");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=56.20,283.34");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=88.60,326.29");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=97.47,368.50");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=66.96,384.93");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=16.60,305.84");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=52.77,262.36");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=45.55,185.16");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=84.08,138.16");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=94.36,251.25");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=107.46,233.47");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=77.56,181.40");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=43.51,158.27");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=101.61,224.81");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=81.07,356.46");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=143.72,271.86");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=121.33,395.04");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=38.74,263.80");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=23.87,362.26");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=45.30,290.18");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=102.69,352.98");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=48.34,378.03");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=222.00,296.08");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=213.28,336.91");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=121.22,307.63");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=43.62,365.24");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=138.44,310.92");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=30.79,387.30");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=146.24,375.54");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=7.31,365.91");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=138.23,230.71");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=60.64,198.50");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=18.10,272.75");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=122.33,165.89");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=120.25,261.03");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=137.82,249.52");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=111.08,182.96");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=20.11,174.97");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=84.17,222.49");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=135.06,373.25");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=28.50,272.84");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=100.81,208.42");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=22.97,249.77");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=113.57,352.31");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=106.14,284.69");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=107.50,362.81");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=56.95,387.49");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=231.55,337.44");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=186.10,205.70");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=67.66,308.28");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=124.10,370.54");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=141.11,323.91");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=126.00,360.52");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=31.49,300.74");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=15.16,348.10");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=163.68,260.94");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=53.31,206.52");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=12.59,242.96");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=32.84,172.52");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=198.38,228.76");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=125.00,291.87");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=131.63,111.53");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=57.07,139.05");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=134.32,172.29");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=133.88,350.10");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=163.22,248.78");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=173.16,306.05");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=19.09,220.65");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=76.24,380.48");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=53.40,310.14");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=110.55,342.09");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=149.86,384.97");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=253.49,299.15");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=188.07,309.80");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=135.84,362.72");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=22.51,379.58");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=38.56,398.67");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=58.19,376.13");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=76.82,365.76");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=2.15,262.52");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=31.00,216.43");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=45.87,199.65");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=78.21,202.42");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=129.51,207.68");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=158.74,204.13");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=171.22,354.80");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=177.89,153.26");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=57.52,174.77");
    }

}

