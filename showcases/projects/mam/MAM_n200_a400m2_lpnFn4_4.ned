
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_4
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
        @display("p=67.93,275.68");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=102.65,259.76");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=109.50,209.26");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=178.99,211.68");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=183.18,198.48");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=204.54,156.03");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=170.82,191.39");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=119.46,142.89");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=64.06,197.60");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=44.40,137.35");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=70.46,216.67");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=119.58,217.57");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=103.29,243.86");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=99.19,335.81");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=90.37,343.84");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=12.40,344.70");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=13.84,360.77");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=63.59,389.49");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=50.41,345.06");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=46.95,355.56");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=27.41,351.42");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=3.06,372.02");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=124.91,380.83");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=136.08,385.45");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=59.75,349.53");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=64.23,368.36");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=56.48,277.19");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=80.16,256.40");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=28.31,257.17");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=110.39,272.19");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=111.42,319.75");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=126.41,325.64");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=134.52,306.85");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=115.11,346.30");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=137.93,293.06");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=61.92,316.74");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=73.81,343.57");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=74.90,353.61");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=145.45,309.40");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=207.14,269.26");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=121.42,268.24");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=47.64,242.83");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=9.38,219.20");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=1.79,229.82");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=74.11,193.13");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=144.40,263.85");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=206.24,293.42");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=192.06,297.85");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=166.46,288.20");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=119.93,231.51");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=23.57,281.07");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=52.50,198.98");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=22.92,245.42");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=116.43,185.60");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=133.39,278.43");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=221.77,170.76");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=179.79,177.40");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=119.44,153.33");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=21.15,131.17");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=83.12,109.48");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=131.73,215.83");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=169.62,172.23");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=89.71,306.17");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=125.82,293.63");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=82.69,395.72");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=82.08,322.67");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=24.48,368.10");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=37.05,368.34");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=104.28,384.92");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=1.10,307.33");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=28.92,340.20");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=21.88,315.39");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=179.82,338.36");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=179.47,387.15");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=60.74,338.09");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=50.97,385.30");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=0.23,248.71");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=72.16,265.46");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=30.91,227.88");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=71.61,240.68");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=154.27,397.81");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=223.83,304.82");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=117.27,258.78");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=89.55,251.80");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=102.11,314.62");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=41.14,233.26");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=86.28,383.59");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=166.68,345.86");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=219.68,322.02");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=217.65,241.14");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=158.85,257.19");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=55.80,265.17");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=34.48,142.65");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=23.86,193.38");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=41.02,265.95");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=171.12,320.60");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=222.24,287.80");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=114.24,331.73");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=150.07,294.96");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=72.30,296.93");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=76.72,333.87");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=187.39,276.46");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=88.22,265.08");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=229.44,226.38");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=161.55,236.87");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=209.81,134.88");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=234.20,141.89");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=216.41,144.78");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=118.76,131.94");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=82.50,84.86");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=130.54,246.46");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=194.73,265.07");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=86.94,236.31");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=183.91,354.59");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=7.20,325.25");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=49.71,324.86");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=96.28,362.75");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=99.48,395.26");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=69.01,377.61");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=4.52,284.32");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=27.90,324.94");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=28.74,304.01");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=193.16,368.24");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=129.58,393.46");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=9.41,397.35");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=127.56,350.55");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=78.51,308.80");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=144.36,245.27");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=34.88,200.22");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=127.87,183.95");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=152.33,336.89");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=150.05,281.62");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=120.61,283.40");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=43.35,296.70");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=181.83,314.82");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=51.64,218.54");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=140.82,360.55");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=76.45,365.57");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=144.07,345.36");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=156.52,191.56");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=210.28,256.81");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=97.00,272.39");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=69.66,178.32");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=33.95,176.74");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=74.51,229.18");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=140.29,227.92");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=274.54,314.71");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=235.31,377.83");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=179.24,298.90");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=124.12,364.91");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=105.75,284.17");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=114.05,244.64");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=120.96,206.44");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=106.50,148.00");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=211.80,116.49");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=130.36,108.35");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=193.81,115.14");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=48.18,178.57");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=96.29,211.18");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=44.87,162.43");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=63.14,229.08");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=146.96,162.97");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=101.35,222.44");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=172.51,398.59");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=38.65,333.99");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=32.61,275.99");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=28.01,394.13");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=49.98,369.46");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=70.31,325.78");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=126.16,336.33");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=10.03,264.07");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=19.85,384.45");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=137.60,371.16");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=158.35,355.52");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=80.65,289.50");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=48.90,334.90");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=50.85,287.75");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=176.85,281.46");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=11.98,232.21");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=132.06,267.51");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=26.57,267.26");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=114.57,361.87");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=114.03,392.54");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=104.00,346.92");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=172.69,250.39");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=49.53,304.86");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=159.22,306.25");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=58.00,295.77");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=136.99,336.70");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=220.12,268.03");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=163.17,270.03");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=29.50,289.87");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=9.56,133.07");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=39.45,252.32");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=84.98,192.25");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=197.17,198.94");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=280.64,233.93");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=167.75,212.47");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=239.49,253.40");
    }

}

