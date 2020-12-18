
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn4-6
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
        @display("p=221.00,101.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=275.68,143.39");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=355.25,123.45");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=374.31,134.21");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=329.27,116.82");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=358.12,149.33");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=366.39,199.21");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=371.81,251.99");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=325.71,232.33");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=350.86,179.84");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=360.97,165.61");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=378.21,97.06");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=317.16,154.12");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=304.55,209.47");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=237.14,209.60");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=188.70,262.46");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=196.80,214.39");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=166.64,299.54");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=179.29,370.82");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=149.24,336.11");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=103.03,375.69");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=87.32,332.23");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=70.37,351.39");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=45.26,369.78");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=68.44,369.42");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=49.63,299.08");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=27.98,278.39");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=2.98,334.56");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=151.03,368.22");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=118.80,373.89");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=130.67,275.91");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=159.13,217.59");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=195.32,143.60");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=160.69,230.92");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=191.63,243.25");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=114.49,304.71");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=89.28,223.60");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=104.53,158.31");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=59.88,109.94");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=44.37,129.73");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=11.30,168.31");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=91.24,118.11");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=65.82,89.58");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=117.41,32.40");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=73.89,21.40");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=89.65,21.19");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=45.49,108.80");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=20.39,157.30");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=25.00,177.27");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=54.73,237.73");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=258.01,151.10");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=344.42,131.72");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=292.29,116.99");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=345.40,93.68");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=386.31,117.26");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=345.96,232.08");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=377.93,243.88");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=349.91,329.40");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=325.00,242.73");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=375.28,166.26");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=337.17,181.96");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=323.91,131.71");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=298.76,100.45");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=219.00,209.46");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=266.69,285.57");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=167.71,238.58");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=211.27,216.27");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=165.29,265.84");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=101.71,333.93");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=213.94,282.58");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=30.17,352.59");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=132.05,294.40");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=34.76,381.00");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=45.54,342.43");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=39.40,282.09");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=0.69,249.64");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=37.13,240.96");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=23.16,329.11");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=152.53,314.64");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=127.55,360.10");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=126.25,260.45");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=212.43,165.36");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=151.43,147.78");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=135.07,214.24");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=189.86,297.52");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=160.38,275.99");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=3.81,213.52");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=102.16,183.64");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=84.14,162.98");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=33.71,133.59");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=52.76,153.00");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=79.36,123.68");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=111.53,97.64");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=166.50,54.42");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=5.73,55.79");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=27.33,28.01");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=10.50,141.08");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=28.70,192.92");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=67.74,186.57");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=48.50,324.81");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=179.89,35.27");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=266.21,185.32");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=367.12,143.14");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=374.06,230.97");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=274.81,103.93");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=329.29,149.21");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=384.55,190.16");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=297.64,259.18");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=247.09,175.30");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=285.61,106.50");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=321.50,210.01");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=334.19,83.76");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=284.07,201.91");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=280.13,163.11");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=254.21,225.99");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=190.67,282.14");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=238.36,199.08");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=184.32,306.55");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=207.85,366.09");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=158.40,394.15");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=52.56,309.24");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=180.26,316.63");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=82.78,365.51");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=73.12,335.57");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=16.08,320.32");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=30.19,295.31");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=105.72,309.56");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=22.51,343.06");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=153.49,351.71");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=192.66,337.34");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=148.94,277.03");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=149.01,237.42");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=201.82,135.52");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=118.70,200.03");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=199.37,325.40");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=106.69,274.86");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=109.24,195.94");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=118.45,148.14");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=83.11,47.56");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=2.74,133.49");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=74.58,168.09");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=134.46,114.16");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=139.88,136.46");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=110.62,10.28");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=62.06,23.90");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=86.60,34.14");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=47.86,175.64");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=104.49,137.37");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=65.03,251.85");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=51.39,201.20");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=235.01,76.01");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=325.10,220.38");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=312.17,196.87");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=389.42,88.51");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=346.24,150.43");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=296.45,137.14");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=328.35,198.70");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=399.67,274.80");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=343.73,215.93");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=306.26,142.49");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=344.09,107.13");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=393.41,56.90");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=304.31,226.46");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=273.71,219.97");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=257.71,271.92");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=185.35,223.18");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=137.79,157.88");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=123.71,348.86");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=188.94,378.06");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=207.24,263.26");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=91.16,371.91");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=84.48,272.54");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=125.47,310.12");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=94.18,323.23");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=81.86,341.47");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=34.71,336.64");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=14.11,277.47");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=6.75,314.97");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=97.38,358.96");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=134.75,338.06");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=87.87,289.06");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=173.32,166.06");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=216.46,76.31");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=239.00,278.52");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=144.37,296.81");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=68.70,231.22");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=61.71,210.41");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=151.36,167.76");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=99.64,103.77");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=81.38,145.25");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=93.82,142.59");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=103.72,83.70");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=62.14,77.47");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=38.49,27.75");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=108.85,56.92");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=58.40,41.55");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=54.89,64.95");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=4.97,118.79");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=1.87,184.70");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=62.12,270.83");
    }

}

