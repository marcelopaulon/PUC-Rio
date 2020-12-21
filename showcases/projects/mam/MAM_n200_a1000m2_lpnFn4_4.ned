
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_4
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
        @display("p=153.11,152.78");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=132.72,123.25");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=115.77,131.29");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=64.98,194.54");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=17.24,133.40");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=32.98,151.94");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=81.41,158.94");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=92.30,172.67");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=107.28,169.63");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=105.43,120.65");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=113.97,66.95");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=117.59,49.61");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=138.52,20.58");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=129.13,11.32");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=199.94,29.34");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=255.36,23.69");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=256.54,41.49");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=272.38,27.41");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=208.88,74.80");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=212.13,103.22");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=135.67,167.14");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=81.47,214.61");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=101.36,192.41");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=142.83,204.97");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=75.70,172.31");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=64.22,163.91");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=105.32,150.22");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=14.42,173.90");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=4.91,180.02");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=38.79,93.95");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=33.16,84.85");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=35.24,22.08");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=84.18,86.21");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=118.32,193.20");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=38.81,208.24");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=21.49,210.88");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=1.41,192.15");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=2.38,226.32");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=101.87,218.87");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=80.59,148.00");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=51.00,220.47");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=57.75,259.62");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=97.57,303.39");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=71.25,218.57");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=99.68,241.33");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=130.38,333.96");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=162.12,351.08");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=140.47,429.91");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=100.41,451.16");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=108.70,54.78");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=148.63,73.32");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=110.49,159.93");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=210.44,135.25");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=114.37,242.70");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=55.54,106.44");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=54.43,177.69");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=90.26,136.57");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=90.36,270.24");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=141.47,103.16");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=120.83,213.45");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=130.41,88.09");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=130.38,137.35");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=114.51,11.47");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=140.29,9.00");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=227.70,55.31");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=253.96,54.91");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=228.54,5.27");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=217.25,17.35");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=157.98,63.04");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=219.67,93.42");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=135.03,192.72");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=132.73,263.49");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=85.08,194.50");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=77.50,184.87");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=155.06,133.44");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=14.68,96.15");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=121.68,162.50");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=2.49,212.40");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=75.71,129.37");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=67.64,96.56");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=30.60,71.07");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=89.13,13.74");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=105.06,89.60");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=34.02,169.02");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=32.33,196.61");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=49.62,292.52");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=23.92,103.76");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=41.38,240.01");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=106.25,308.83");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=18.22,220.79");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=129.59,276.72");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=57.33,323.92");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=49.07,247.04");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=21.32,200.65");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=177.73,287.51");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=57.70,372.29");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=164.92,323.98");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=138.50,486.70");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=161.36,417.30");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=110.41,102.11");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=172.20,82.91");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=123.67,107.31");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=103.09,36.28");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=114.95,273.73");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=49.40,122.69");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=13.04,116.77");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=46.60,163.39");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=160.33,119.44");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=112.22,181.44");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=64.25,144.45");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=59.81,54.34");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=187.78,104.64");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=170.19,21.10");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=54.20,63.43");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=184.28,4.94");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=241.62,42.43");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=291.45,9.91");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=318.88,23.70");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=247.76,123.97");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=289.54,74.30");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=215.12,168.69");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=117.13,288.31");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=40.61,268.88");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=124.62,230.84");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=144.43,177.92");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=140.49,148.11");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=118.52,118.31");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=2.72,121.30");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=95.80,208.06");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=51.02,96.63");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=75.90,13.58");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=9.30,61.56");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=66.73,6.55");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=191.38,199.59");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=103.81,137.03");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=49.50,197.90");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=39.07,250.74");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=18.06,250.64");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=33.56,289.17");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=43.44,75.07");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=76.06,278.41");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=69.00,261.31");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=99.44,285.29");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=28.91,225.14");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=143.29,229.71");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=153.36,373.97");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=174.99,311.63");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=123.37,421.14");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=25.64,430.74");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=94.04,162.16");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=132.82,212.26");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=208.07,117.46");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=81.81,54.09");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=75.64,199.10");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=32.95,58.19");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=21.44,151.46");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=165.34,175.86");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=173.32,161.31");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=14.23,185.78");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=36.08,127.41");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=42.87,42.94");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=127.12,71.67");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=103.84,6.52");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=85.57,74.02");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=200.78,83.09");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=306.03,69.01");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=207.22,44.07");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=223.92,27.12");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=227.82,75.32");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=166.73,46.80");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=187.97,144.45");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=88.03,239.13");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=169.17,133.67");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=157.76,226.17");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=84.12,226.92");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=95.00,81.22");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=157.58,199.41");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=11.33,164.33");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=2.04,131.54");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=53.98,84.59");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=21.14,82.70");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=94.58,47.64");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=68.72,35.62");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=70.94,241.63");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=3.27,142.41");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=60.21,126.75");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=45.28,151.89");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=31.05,319.58");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=128.43,300.80");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=26.72,122.06");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=129.72,247.63");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=71.62,296.85");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=107.52,334.60");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=125.82,147.43");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=146.51,288.12");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=54.09,273.11");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=147.61,314.35");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=124.64,363.51");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=86.72,433.63");
    }

}

