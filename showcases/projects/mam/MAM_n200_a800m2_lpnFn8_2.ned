
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_2
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=71.92,75.08");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=59.60,65.45");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=103.95,141.62");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=70.96,140.28");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=12.50,137.25");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=3.63,203.99");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=52.72,265.35");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=19.86,293.75");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=43.42,314.71");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=39.93,249.76");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=40.99,215.28");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=21.90,195.30");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=18.55,277.36");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=58.12,243.83");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=13.97,314.95");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=7.68,292.27");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=75.52,223.68");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=57.45,277.51");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=37.96,236.61");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=75.61,286.64");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=107.30,300.45");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=29.84,322.19");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=45.68,226.86");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=10.31,180.62");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=87.81,123.11");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=96.17,61.59");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=40.70,72.32");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=162.02,117.59");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=112.65,197.45");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=1.13,104.97");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=47.42,183.11");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=54.77,319.44");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=44.63,340.77");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=42.21,355.97");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=81.97,233.75");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=64.85,220.31");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=102.19,163.95");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=51.47,300.23");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=63.44,205.38");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=3.92,310.78");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=30.19,283.94");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=23.32,173.48");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=65.15,334.86");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=16.33,231.66");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=24.06,370.13");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=147.88,333.48");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=37.89,383.44");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=3.89,272.52");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=4.36,170.95");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=117.62,117.65");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=125.81,21.27");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=53.28,29.51");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=139.78,144.49");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=1.60,150.96");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=102.86,174.59");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=24.78,225.45");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=89.59,212.78");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=119.26,286.78");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=101.98,377.71");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=118.86,268.93");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=38.65,146.03");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=64.89,157.83");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=24.72,302.50");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=96.83,249.85");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=24.07,382.11");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=31.35,333.13");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=37.43,271.45");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=51.10,253.10");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=134.91,229.44");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=120.60,318.24");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=120.48,296.87");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=67.92,270.51");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=9.40,245.78");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=53.65,146.79");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=95.22,87.11");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=76.91,126.45");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=51.76,100.36");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=91.71,77.39");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=134.19,111.00");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=36.33,156.42");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=79.43,211.32");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=87.27,354.56");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=90.60,273.35");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=60.23,351.08");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=121.61,192.76");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=127.32,241.40");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=62.31,183.18");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=1.82,260.03");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=127.10,216.43");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=106.41,318.52");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=14.32,304.61");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=152.38,243.84");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=29.47,265.26");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=84.66,320.42");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=128.52,342.03");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=138.11,310.16");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=68.34,308.63");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=72.34,200.21");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=8.77,218.45");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=95.39,154.97");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=138.02,95.47");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=43.10,112.76");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=48.00,83.90");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=169.67,124.41");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=30.30,94.94");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=19.07,254.82");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=49.26,206.75");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=92.59,329.45");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=46.15,325.35");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=115.81,309.00");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=45.07,134.04");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=33.15,190.70");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=45.91,285.91");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=127.41,183.82");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=8.58,388.74");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=8.01,359.49");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=90.92,241.36");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=77.90,249.98");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=96.40,202.55");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=152.52,314.04");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=158.21,344.06");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=2.44,345.19");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=35.56,294.04");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=74.90,182.02");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=173.69,101.91");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=129.73,34.30");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=81.20,11.98");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=157.21,225.27");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=116.11,181.58");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=2.57,128.25");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=36.02,203.26");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=137.19,284.13");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=77.25,264.80");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=107.86,354.90");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=96.70,304.78");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=105.89,216.56");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=17.52,162.97");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=17.23,330.11");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=46.15,195.91");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=15.57,352.21");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=7.71,194.69");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=61.63,260.46");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=112.91,250.06");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=67.91,252.52");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=91.43,286.92");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=30.89,346.78");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=125.15,328.28");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=90.98,185.99");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=92.80,169.37");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=112.55,84.53");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=76.82,61.16");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=74.47,24.78");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=135.96,189.55");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=107.53,61.57");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=64.80,118.55");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=32.80,177.88");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=19.52,208.48");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=79.72,344.50");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=2.89,283.37");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=55.41,163.59");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=83.26,156.80");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=95.71,133.42");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=105.85,261.11");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=85.13,306.43");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=33.88,363.52");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=0.04,240.36");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=26.61,236.40");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=146.21,263.90");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=129.38,274.72");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=71.70,325.97");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=166.85,288.18");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=60.97,373.77");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=89.52,145.87");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=45.84,170.43");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=195.92,98.87");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=65.22,51.30");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=8.61,34.30");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=165.91,207.13");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=151.83,105.47");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=13.83,101.90");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=18.33,152.59");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=100.07,293.31");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=5.47,228.48");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=71.66,380.19");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=23.12,183.48");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=119.31,166.25");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=79.55,146.68");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=61.70,298.19");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=139.28,212.72");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=48.55,401.51");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=71.07,232.94");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=34.21,134.49");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=102.42,273.06");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=117.12,234.10");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=76.02,358.16");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=91.61,387.40");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=77.91,398.52");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=0.23,183.65");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=51.64,119.76");
    }

}

