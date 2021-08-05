
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_9
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=142.31,146.25");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=144.67,171.13");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=155.14,183.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=135.56,247.75");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=107.60,280.62");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=100.73,290.04");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=15.37,246.20");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=12.92,216.25");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=56.56,193.58");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=22.28,164.29");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=121.24,234.05");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=149.63,322.22");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=182.26,396.95");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=188.32,345.08");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=143.96,338.08");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=133.62,326.81");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=89.76,170.25");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=174.65,144.43");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=101.87,121.15");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=96.85,152.50");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=101.01,201.20");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=87.52,305.68");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=60.48,358.59");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=21.98,175.96");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=59.13,152.61");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=70.38,196.01");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=42.13,176.22");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=106.98,219.86");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=92.05,324.02");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=116.75,463.76");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=187.27,410.57");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=222.29,305.30");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=134.34,306.69");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=77.56,150.48");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=128.65,143.24");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=152.06,98.20");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=212.85,165.59");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=71.64,175.54");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=95.76,266.81");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=135.43,276.65");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=12.08,256.36");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=81.12,180.23");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=41.67,271.42");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=40.68,152.57");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=112.00,251.45");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=91.33,336.41");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=168.75,349.88");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=195.67,322.36");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=225.88,290.44");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=138.87,347.54");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=70.21,60.94");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=224.58,115.95");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=155.34,83.48");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=95.97,140.10");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=56.68,263.68");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=111.48,261.69");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=47.56,303.97");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=0.08,275.02");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=5.14,209.29");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=96.17,210.62");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=51.24,236.81");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=63.23,288.49");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=117.76,314.61");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=131.54,402.43");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=174.97,294.36");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=56.65,341.27");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=210.82,352.15");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=115.10,30.13");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=241.45,140.38");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=216.21,206.98");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=137.34,218.57");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=148.24,254.75");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=36.74,306.24");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=67.22,314.83");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=57.27,209.29");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=21.82,203.16");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=63.81,97.45");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=34.39,98.29");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=37.69,254.13");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=56.53,310.07");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=111.63,376.16");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=136.91,361.60");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=206.65,268.88");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=114.01,336.02");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=86.40,125.45");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=112.14,162.17");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=123.04,128.45");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=161.31,201.64");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=162.24,276.15");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=83.02,317.10");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=70.40,243.54");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=102.26,240.05");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=49.84,247.51");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=127.02,211.15");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=89.25,227.48");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=76.35,222.11");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=81.26,378.03");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=197.05,398.76");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=239.35,374.90");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=73.50,325.85");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=105.06,385.90");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=192.57,119.88");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=148.06,124.46");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=131.88,181.40");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=140.60,161.70");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=127.35,259.80");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=143.94,236.00");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=158.57,343.02");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=8.08,294.07");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=54.55,282.60");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=47.03,213.23");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=21.11,120.71");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=214.64,254.59");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=149.33,415.32");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=182.40,428.32");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=229.52,333.31");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=159.51,362.73");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=121.78,274.66");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=68.53,24.57");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=160.77,126.25");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=155.33,156.37");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=135.26,133.35");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=189.02,165.54");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=132.15,238.05");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=86.36,255.03");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=45.59,318.88");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=82.28,269.52");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=26.23,190.29");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=53.83,133.09");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=162.46,292.06");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=117.30,325.06");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=181.17,378.53");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=187.67,307.38");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=116.67,304.08");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=94.40,360.22");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=143.05,80.79");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=215.76,104.27");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=191.24,204.19");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=183.40,127.66");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=194.00,287.22");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=15.55,279.36");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=116.72,293.00");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=91.60,242.73");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=13.36,235.72");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=138.73,197.54");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=10.80,111.66");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=80.29,241.27");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=103.30,321.10");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=203.92,462.55");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=193.00,261.15");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=200.11,307.43");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=114.31,415.17");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=185.37,103.62");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=124.20,70.52");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=130.47,105.61");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=220.23,238.83");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=161.42,223.55");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=71.15,358.50");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=74.75,298.21");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=97.72,254.80");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=22.58,313.77");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=58.90,182.35");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=12.67,143.07");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=88.90,201.06");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=149.78,380.62");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=142.94,423.28");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=220.09,368.25");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=97.70,412.59");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=176.34,331.50");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=157.02,58.29");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=221.77,141.87");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=184.28,226.01");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=127.32,154.50");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=147.71,276.72");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=187.34,270.31");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=126.01,384.61");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=39.48,191.97");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=43.37,122.10");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=120.25,181.64");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=29.84,73.16");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=169.01,321.69");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=143.18,294.70");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=97.11,442.79");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=197.22,377.95");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=217.25,384.53");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=69.34,338.55");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=94.57,90.29");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=138.92,69.45");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=207.94,191.83");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=110.81,205.77");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=73.71,258.73");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=38.77,243.32");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=158.11,262.07");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=43.73,291.36");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=25.36,213.93");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=111.21,233.74");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=55.57,70.03");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=167.70,233.95");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=153.74,297.72");
    }

}

