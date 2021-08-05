
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_0
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
        @display("p=118.19,118.82");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=107.83,127.31");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=141.40,87.50");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=155.20,120.65");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=150.70,135.40");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=177.47,126.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=180.91,138.08");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=184.48,161.80");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=180.05,238.99");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=193.95,230.58");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=192.58,241.87");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=103.53,286.33");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=106.22,202.48");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=154.62,200.94");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=167.01,186.50");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=144.18,255.56");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=200.74,259.86");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=214.10,190.86");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=193.56,174.48");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=201.92,164.10");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=188.28,152.15");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=238.33,76.69");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=219.72,89.48");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=182.38,56.59");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=225.54,162.36");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=134.66,129.26");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=218.64,170.26");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=125.24,162.01");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=146.26,160.54");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=155.86,57.48");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=172.25,24.59");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=133.02,66.91");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=63.52,70.81");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=2.53,129.15");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=86.06,161.44");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=75.77,152.68");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=74.21,201.37");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=91.33,277.87");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=29.71,284.25");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=10.37,267.83");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=61.64,208.25");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=47.47,285.29");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=125.46,248.94");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=44.11,251.86");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=93.69,295.76");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=125.51,293.90");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=200.81,304.66");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=201.66,290.83");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=141.72,321.79");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=58.05,101.53");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=155.47,146.58");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=119.56,132.69");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=144.23,119.29");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=185.42,94.92");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=87.45,58.37");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=98.09,147.94");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=251.55,114.24");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=124.66,174.59");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=200.71,275.56");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=187.14,285.39");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=147.60,177.43");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=32.12,305.68");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=109.93,184.09");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=128.01,268.28");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=222.42,144.29");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=152.38,344.33");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=213.20,280.97");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=182.28,216.71");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=242.69,159.15");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=228.38,178.37");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=126.80,105.38");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=249.66,151.30");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=144.23,71.35");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=208.36,32.52");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=206.77,130.59");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=118.97,91.28");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=249.59,245.08");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=86.10,126.53");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=223.03,214.07");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=216.37,69.54");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=184.50,69.77");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=70.01,106.38");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=4.62,146.13");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=50.25,48.39");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=37.16,170.93");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=50.20,187.97");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=63.31,160.39");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=126.20,305.02");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=36.23,261.54");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=42.25,301.91");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=9.70,216.32");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=14.53,293.47");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=198.22,197.76");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=73.38,315.53");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=169.11,287.85");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=109.51,315.21");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=231.66,323.88");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=239.13,295.29");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=117.61,338.94");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=143.20,144.41");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=144.47,38.49");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=41.78,81.03");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=133.31,94.27");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=228.68,120.83");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=136.68,46.04");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=176.19,78.80");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=115.79,76.77");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=206.93,65.60");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=99.73,187.45");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=223.65,280.69");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=151.47,230.50");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=186.04,336.43");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=121.96,201.07");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=111.58,259.39");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=111.71,241.98");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=116.22,224.94");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=257.99,293.29");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=165.43,257.25");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=205.89,183.83");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=138.43,225.44");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=196.79,124.58");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=247.71,59.13");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=271.30,138.61");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=165.05,13.65");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=233.18,152.91");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=113.29,165.39");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=206.93,148.41");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=214.95,203.35");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=161.31,158.51");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=190.11,108.61");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=188.38,26.72");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=102.49,39.26");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=74.87,70.03");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=86.49,140.06");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=64.29,133.61");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=46.91,228.51");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=16.50,125.06");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=4.66,297.47");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=19.15,184.89");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=25.08,230.11");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=12.07,192.06");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=47.63,375.97");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=40.99,237.10");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=54.88,260.89");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=76.90,260.40");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=66.98,334.59");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=261.32,357.48");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=189.69,388.21");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=60.62,286.03");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=97.73,76.60");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=26.49,112.33");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=172.94,94.33");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=134.51,112.91");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=198.22,210.67");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=172.16,172.73");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=242.01,97.35");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=170.68,140.46");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=269.97,154.48");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=147.62,283.87");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=135.27,236.41");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=123.64,234.66");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=172.58,316.51");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=130.88,193.75");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=147.11,189.10");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=256.54,206.00");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=92.38,227.08");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=262.42,304.66");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=162.43,176.55");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=207.81,231.45");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=236.58,241.31");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=132.69,142.92");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=272.89,102.52");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=169.07,58.83");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=157.10,42.65");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=240.49,126.69");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=87.20,172.93");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=268.76,170.63");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=33.41,148.57");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=133.26,153.67");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=220.95,58.17");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=174.04,3.64");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=112.83,5.83");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=79.74,49.40");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=30.27,78.86");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=53.18,215.43");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=89.70,99.65");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=59.81,244.46");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=103.08,266.39");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=6.71,278.77");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=19.32,252.63");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=71.40,191.39");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=139.96,271.43");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=76.40,246.25");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=80.59,270.25");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=116.67,287.81");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=200.13,342.65");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=220.69,294.46");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=231.17,342.74");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=172.07,347.30");
    }

}

