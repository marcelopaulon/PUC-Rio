
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn12-7
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
        @display("p=28.00,345.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=50.05,334.63");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=56.52,379.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=72.13,354.03");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=11.87,364.63");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=31.19,371.07");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=105.38,314.48");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=139.65,290.96");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=126.44,322.34");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=180.60,243.06");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=138.33,236.68");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=57.78,254.91");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=4.73,263.33");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=40.74,295.04");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=62.76,265.61");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=64.55,284.91");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=13.13,287.53");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=29.81,309.92");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=36.90,260.03");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=126.14,399.48");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=90.91,384.44");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=10.77,383.45");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=30.92,393.48");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=42.53,327.37");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=91.68,293.75");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=106.64,351.29");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=152.99,308.72");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=133.51,200.55");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=67.75,250.58");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=11.67,194.01");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=60.51,296.35");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=136.84,251.74");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=111.03,296.62");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=29.31,296.30");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=13.63,310.35");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=57.42,346.42");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=15.18,334.01");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=54.08,362.12");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=43.20,384.02");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=64.65,392.50");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=119.97,365.63");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=186.84,359.85");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=99.01,282.59");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=184.08,230.81");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=138.14,153.28");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=18.17,245.95");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=3.64,216.55");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=70.87,228.34");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=136.00,265.23");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=66.52,306.77");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=111.12,270.64");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=119.66,384.89");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=17.39,275.04");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=110.75,393.64");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=74.55,370.17");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=14.62,353.66");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=30.31,382.73");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=81.68,298.81");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=151.31,330.53");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=144.25,368.42");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=193.36,325.97");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=146.13,164.37");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=70.30,216.87");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=89.15,226.44");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=36.69,272.10");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=76.25,258.49");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=68.80,273.62");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=48.44,218.17");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=82.59,351.66");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=106.01,341.25");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=33.17,320.63");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=6.69,322.35");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=17.23,398.81");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=11.72,299.38");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=149.82,340.49");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=123.02,282.09");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=134.72,331.55");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=172.37,235.47");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=196.12,282.27");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=110.52,198.75");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=8.54,249.12");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=125.90,294.79");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=24.70,267.02");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=160.21,301.42");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=30.59,222.88");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=30.95,333.26");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=54.10,279.45");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=80.17,399.91");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=105.40,376.11");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=9.40,344.76");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=44.65,372.16");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=92.44,361.11");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=218.24,312.17");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=142.99,306.01");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=178.03,318.63");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=97.39,211.65");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=130.64,224.68");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=35.75,212.64");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=44.98,315.11");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=2.12,186.30");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=127.56,235.14");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=0.67,288.97");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=4.25,371.91");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=69.74,321.50");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=150.92,376.11");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=135.83,385.70");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=40.74,359.96");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=2.36,310.70");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=71.39,381.83");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=88.81,334.82");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=153.58,359.85");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=182.25,212.44");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=101.17,182.83");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=136.02,278.48");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=45.20,250.47");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=72.41,333.48");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=91.00,183.46");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=125.01,248.28");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=17.49,218.69");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=45.28,343.88");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=93.52,266.28");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=52.55,391.87");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=82.64,377.57");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=21.90,320.03");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=67.32,342.52");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=99.30,239.48");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=200.55,230.98");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=181.54,347.64");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=121.89,185.01");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=133.36,214.23");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=20.34,229.37");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=56.34,209.58");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=45.48,200.81");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=49.52,234.07");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=88.29,278.87");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=98.33,303.36");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=95.09,347.23");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=124.32,337.38");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=136.45,396.12");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=117.15,347.58");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=3.62,354.07");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=4.15,276.37");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=105.22,325.63");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=144.57,317.61");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=181.80,391.77");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=205.92,259.54");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=60.36,183.68");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=105.01,253.37");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=40.18,187.29");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=127.14,260.45");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=29.69,186.38");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=114.59,225.17");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=33.49,202.27");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=51.48,263.01");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=86.22,311.03");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=2.95,391.18");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=149.45,399.76");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=99.72,393.51");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=21.13,374.70");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=112.41,281.77");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=210.68,329.72");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=86.47,239.02");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=259.88,293.80");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=169.90,276.88");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=66.28,203.94");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=8.49,174.51");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=36.50,234.85");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=94.11,249.83");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=83.18,266.56");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=49.87,289.36");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=86.97,322.42");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=131.85,376.53");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=105.26,365.12");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=1.40,335.53");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=53.30,324.52");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=39.88,281.65");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=190.30,313.70");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=155.69,287.22");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=185.14,375.15");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=173.06,157.17");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=181.51,298.65");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=154.36,273.32");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=76.48,243.53");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=77.99,204.86");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=58.66,193.95");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=27.76,286.24");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=5.16,204.89");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=28.42,251.81");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=26.30,356.77");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=72.93,290.90");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=164.33,332.20");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=55.55,313.62");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=64.42,370.88");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=132.56,344.23");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=75.91,312.39");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=149.33,253.57");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=236.77,269.91");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=172.32,179.02");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=93.21,167.08");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=16.11,261.56");
    }

}

