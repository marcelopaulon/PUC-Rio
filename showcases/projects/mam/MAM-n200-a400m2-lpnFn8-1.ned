
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn8-1
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
        @display("p=2.00,12.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=17.94,23.86");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=65.19,101.64");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=106.06,190.08");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=76.85,208.73");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=58.57,162.21");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=80.06,242.69");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=76.26,263.91");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=18.94,286.13");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=18.03,377.28");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=32.10,374.29");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=41.52,390.75");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=43.24,373.02");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=18.75,332.28");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=1.03,302.06");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=0.80,233.70");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=11.23,271.79");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=6.11,182.45");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=14.64,218.41");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=41.92,189.94");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=4.46,126.17");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=25.24,219.42");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=79.11,253.70");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=147.51,288.70");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=136.09,309.83");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=92.00,3.57");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=98.34,19.61");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=5.41,70.65");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=76.34,127.70");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=145.50,168.07");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=98.23,83.62");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=55.13,188.42");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=91.33,288.14");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=22.13,355.88");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=58.12,311.20");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=51.04,361.17");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=106.05,319.24");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=5.27,350.58");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=87.84,354.84");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=41.35,263.90");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=17.92,247.24");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=91.32,330.40");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=71.63,162.52");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=27.95,305.87");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=40.11,164.06");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=19.60,159.33");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=112.61,173.06");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=122.85,197.39");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=175.79,230.64");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=180.04,286.73");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=41.07,69.41");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=37.85,35.23");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=32.55,83.62");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=100.72,179.26");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=43.18,274.52");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=80.62,149.41");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=92.57,241.93");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=43.82,287.45");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=54.80,300.74");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=63.77,393.14");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=14.48,306.43");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=13.73,319.47");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=110.12,394.71");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=56.18,332.04");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=52.29,261.54");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=28.19,272.79");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=28.34,203.26");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=58.76,111.15");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=56.51,206.69");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=122.73,181.57");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=14.06,119.14");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=118.14,226.15");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=71.54,352.07");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=81.90,220.29");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=83.83,377.50");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=11.01,1.31");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=93.26,38.86");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=35.46,104.49");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=154.47,162.05");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=62.95,178.09");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=87.80,200.06");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=109.52,284.61");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=99.83,267.53");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=75.92,293.56");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=27.63,388.21");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=51.30,385.85");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=126.49,367.56");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=112.32,300.73");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=43.09,331.66");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=33.79,291.60");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=20.79,228.84");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=87.50,310.05");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=88.10,232.90");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=21.07,183.55");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=14.52,201.10");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=2.32,163.34");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=0.50,254.97");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=109.52,262.23");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=185.93,295.41");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=116.42,331.65");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=35.46,7.35");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=23.60,41.52");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=32.18,132.91");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=147.52,258.83");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=6.10,147.82");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=86.52,82.40");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=41.55,217.03");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=129.21,265.85");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=1.34,283.02");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=93.36,364.27");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=4.41,376.37");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=106.46,378.65");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=1.52,386.53");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=53.06,349.13");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=31.14,361.54");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=49.76,236.56");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=42.07,342.16");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=87.60,165.09");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=25.33,240.48");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=131.15,153.61");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=65.62,139.34");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=102.92,208.74");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=92.88,275.49");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=218.71,227.57");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=72.60,362.40");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=57.85,90.34");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=50.80,46.58");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=70.96,75.12");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=114.70,114.16");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=167.51,248.19");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=70.98,185.65");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=150.61,215.72");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=101.99,230.57");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=34.43,248.72");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=6.62,360.57");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=35.47,322.24");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=117.40,361.98");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=130.28,390.87");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=76.00,338.34");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=23.21,315.48");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=11.35,257.74");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=100.29,293.12");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=50.33,176.12");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=13.33,172.70");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=35.53,146.33");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=33.42,116.83");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=4.69,243.13");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=98.09,167.32");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=216.46,282.84");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=173.19,274.03");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=51.99,58.60");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=65.96,64.85");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=72.96,112.32");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=141.38,227.79");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=65.24,248.97");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=111.89,125.99");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=100.52,310.39");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=51.45,246.59");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=97.32,256.12");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=93.99,375.65");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=66.79,378.02");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=96.39,395.99");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=66.01,330.10");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=116.92,315.06");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=69.20,311.99");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=59.18,222.46");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=79.94,321.80");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=30.28,190.77");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=54.34,271.42");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=77.09,275.96");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=102.32,119.52");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=45.83,316.98");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=109.84,237.90");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=135.29,274.06");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=163.70,319.31");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=20.91,2.77");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=47.70,0.54");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=152.96,88.73");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=90.20,263.77");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=64.81,264.55");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=63.42,195.40");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=123.47,243.85");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=97.39,344.79");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=32.18,338.66");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=79.77,391.47");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=16.82,395.82");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=104.54,353.77");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=5.11,332.74");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=105.54,334.73");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=15.66,343.20");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=24.54,150.08");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=71.31,233.44");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=96.54,220.93");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=0.96,138.36");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=99.27,136.96");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=29.79,49.84");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=23.08,256.96");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=89.10,187.43");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=133.44,235.76");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=137.94,325.61");
    }

}

