
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_0
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
        @display("p=137.97,382.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=176.31,343.20");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=115.93,291.80");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=117.76,345.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=72.24,325.45");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=108.30,238.58");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=120.16,263.90");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=168.90,304.38");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=192.07,300.49");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=118.94,302.82");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=191.55,244.05");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=214.98,150.27");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=166.41,163.02");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=232.00,146.93");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=241.29,139.36");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=222.78,217.25");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=140.94,261.43");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=156.83,190.76");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=185.01,288.20");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=123.80,254.41");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=103.49,256.43");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=147.48,225.50");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=70.52,180.13");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=22.87,124.13");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=47.09,87.75");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=38.19,119.50");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=58.72,111.25");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=22.75,146.50");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=20.38,166.74");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=82.23,202.23");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=62.33,246.54");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=209.75,224.63");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=245.37,184.52");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=271.31,198.12");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=309.07,213.93");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=319.30,189.10");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=291.69,228.98");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=338.13,264.42");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=399.14,282.28");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=390.32,225.62");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=393.50,303.65");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=328.26,363.66");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=257.23,398.38");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=265.70,320.59");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=190.81,263.07");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=195.52,343.24");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=198.53,388.64");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=216.12,335.79");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=212.62,283.32");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=134.03,278.47");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=125.09,380.36");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=155.29,284.56");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=100.63,378.89");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=193.08,310.79");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=31.59,307.65");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=108.27,220.71");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=98.97,271.40");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=91.52,346.82");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=160.23,330.12");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=140.50,328.17");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=178.28,245.96");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=247.15,109.44");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=259.17,190.37");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=269.19,125.59");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=286.55,140.04");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=215.11,209.42");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=147.37,272.24");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=177.64,168.75");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=172.02,288.39");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=94.48,215.57");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=127.80,232.14");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=90.53,163.75");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=80.55,170.53");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=39.63,159.87");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=7.98,157.01");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=12.67,117.35");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=65.65,77.30");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=29.59,220.31");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=104.67,167.59");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=138.40,176.71");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=38.94,212.88");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=211.88,306.73");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=329.87,173.87");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=292.49,182.15");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=286.32,210.46");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=382.33,217.77");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=375.29,184.39");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=330.18,215.29");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=333.62,324.50");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=361.81,222.16");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=363.53,302.34");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=319.64,344.74");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=169.85,391.78");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=348.36,276.19");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=199.56,251.36");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=156.67,364.39");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=192.44,325.74");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=197.08,273.89");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=245.28,305.65");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=91.46,254.90");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=135.04,368.13");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=172.08,368.68");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=22.50,266.71");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=69.86,395.42");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=14.90,304.30");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=127.67,169.34");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=120.13,360.48");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=168.22,233.01");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=106.21,323.74");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=35.58,282.79");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=141.25,207.49");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=233.45,200.81");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=135.49,152.72");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=223.98,197.01");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=285.83,106.01");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=172.69,188.45");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=161.74,250.35");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=153.56,143.75");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=232.23,282.68");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=120.05,334.81");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=75.06,314.02");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=181.52,275.55");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=92.93,184.95");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=75.57,152.84");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=49.68,172.87");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=37.12,66.86");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=107.07,66.04");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=11.37,140.48");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=21.42,180.77");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=81.91,214.58");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=56.08,225.40");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=192.33,186.36");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=238.45,240.38");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=193.72,158.98");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=226.29,236.94");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=379.67,115.49");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=280.02,152.10");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=363.37,271.39");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=351.74,307.27");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=348.88,233.43");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=354.35,340.10");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=357.67,383.13");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=243.83,399.23");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=291.43,332.77");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=212.99,191.12");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=183.32,315.47");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=229.51,371.19");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=195.91,360.54");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=218.29,262.75");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=74.31,275.60");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=141.29,397.43");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=136.56,344.45");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=119.33,280.41");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=83.85,355.95");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=82.11,333.48");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=143.54,235.10");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=151.37,338.36");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=142.92,374.29");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=240.49,273.14");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=88.15,312.02");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=286.31,268.86");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=288.37,85.73");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=78.70,139.73");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=304.97,91.39");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=327.08,145.35");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=184.27,127.79");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=146.37,250.27");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=151.60,214.27");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=182.12,207.14");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=103.46,189.69");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=26.82,208.33");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=121.89,215.49");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=50.06,160.57");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=22.57,112.64");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=134.64,104.80");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=19.04,196.09");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=75.35,100.49");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=45.08,136.46");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=32.06,186.32");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=61.13,194.94");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=52.14,255.77");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=260.26,288.86");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=250.56,236.32");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=365.48,201.43");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=327.78,225.66");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=330.88,189.68");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=251.94,207.34");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=372.17,331.04");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=397.78,313.04");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=326.83,267.73");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=383.59,315.64");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=312.07,359.57");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=204.14,315.78");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=253.62,318.72");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=238.61,212.56");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=141.92,290.98");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=248.21,329.93");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=303.56,378.78");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=173.45,356.77");
    }

}

