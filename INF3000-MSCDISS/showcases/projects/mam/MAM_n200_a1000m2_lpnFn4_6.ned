
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_6
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
        @display("p=107.24,49.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=91.67,64.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=118.15,21.30");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=112.47,5.52");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=142.54,65.11");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=151.54,51.70");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=139.06,117.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=185.67,76.04");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=136.40,84.01");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=134.29,102.11");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=97.36,163.01");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=113.39,154.80");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=140.15,248.73");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=63.25,200.83");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=25.66,125.33");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=48.59,140.65");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=83.01,147.19");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=114.62,142.59");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=57.48,98.02");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=71.65,109.99");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=65.20,143.39");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=61.84,118.80");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=52.09,121.30");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=43.50,130.62");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=125.03,80.10");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=25.69,85.58");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=11.94,50.63");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=15.15,32.52");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=30.65,25.23");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=49.88,70.81");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=36.74,85.93");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=94.75,33.23");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=58.96,76.02");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=116.25,123.36");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=21.11,99.34");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=4.77,58.51");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=4.26,31.41");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=80.05,47.96");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=222.21,97.01");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=210.51,194.62");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=154.47,273.60");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=176.60,170.81");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=191.76,96.57");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=241.35,148.88");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=191.85,146.98");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=201.46,133.39");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=277.58,126.10");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=160.37,157.86");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=185.92,131.84");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=129.37,58.62");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=204.38,41.75");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=81.73,72.03");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=89.14,106.65");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=96.86,3.22");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=57.15,40.91");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=170.65,55.30");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=177.31,197.88");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=249.33,7.76");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=109.17,81.90");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=154.44,94.43");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=182.46,152.62");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=97.29,196.72");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=108.58,183.26");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=132.22,198.00");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=88.41,120.02");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=40.38,220.59");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=121.34,99.25");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=149.23,143.86");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=84.08,167.49");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=139.61,131.29");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=55.14,188.11");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=18.78,145.69");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=64.82,88.81");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=0.31,120.76");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=128.32,42.67");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=8.15,73.51");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=52.26,53.53");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=24.11,50.80");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=19.84,12.03");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=39.19,120.01");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=83.78,22.32");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=148.61,40.29");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=44.53,24.42");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=151.38,196.51");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=4.37,102.10");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=84.49,85.10");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=63.79,10.16");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=117.85,43.90");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=221.25,110.60");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=144.68,268.87");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=160.11,319.76");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=235.83,98.84");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=153.18,81.22");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=289.20,175.25");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=277.65,181.71");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=204.61,146.67");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=337.50,152.50");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=169.97,154.33");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=173.77,210.71");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=118.34,194.93");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=58.19,29.36");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=133.69,72.11");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=107.96,113.54");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=86.94,5.44");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=156.03,127.11");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=221.00,9.88");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=158.36,64.71");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=206.27,25.79");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=144.23,106.53");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=86.45,136.54");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=86.24,196.34");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=47.08,87.69");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=175.10,281.27");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=52.03,214.51");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=48.71,107.74");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=24.58,224.32");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=64.75,51.93");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=66.66,157.61");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=61.36,167.64");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=70.42,124.31");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=8.19,200.39");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=128.49,133.21");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=32.23,160.61");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=21.03,156.96");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=156.23,4.66");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=13.46,127.18");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=13.28,115.89");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=42.01,52.79");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=29.29,4.56");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=24.24,115.18");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=26.71,36.36");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=187.63,3.13");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=44.44,36.64");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=48.68,153.31");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=37.83,195.41");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=74.87,92.21");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=9.99,91.96");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=106.94,27.70");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=312.28,122.54");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=131.93,152.29");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=116.05,322.38");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=217.41,225.19");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=250.99,70.27");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=263.75,153.50");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=269.45,87.03");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=185.86,188.10");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=301.42,119.31");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=113.74,208.82");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=181.58,110.20");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=81.30,181.00");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=94.38,129.91");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=162.08,85.87");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=41.80,3.88");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=123.56,8.24");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=231.17,87.06");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=167.18,17.96");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=133.94,210.96");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=259.62,48.76");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=218.33,47.23");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=195.26,124.25");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=125.02,186.06");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=155.23,170.83");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=164.48,273.44");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=75.08,137.81");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=53.04,203.40");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=107.43,134.00");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=65.96,242.71");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=117.63,164.22");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=60.92,108.11");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=19.08,180.59");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=35.27,173.38");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=96.55,83.39");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=99.80,56.05");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=5.59,190.39");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=136.51,176.31");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=0.72,9.18");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=14.90,60.25");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=21.62,73.74");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=15.53,22.29");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=35.70,105.82");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=75.08,33.82");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=102.91,18.24");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=125.64,118.02");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=82.75,208.75");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=39.11,70.92");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=69.83,70.78");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=86.71,55.50");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=138.24,45.11");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=223.72,57.97");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=222.30,203.23");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=214.44,258.15");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=200.02,245.36");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=236.92,38.50");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=192.27,106.59");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=188.94,166.46");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=263.76,77.55");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=330.44,138.18");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=246.52,165.61");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=257.59,123.92");
    }

}

