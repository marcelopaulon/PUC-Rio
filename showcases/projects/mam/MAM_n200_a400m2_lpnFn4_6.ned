
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_6
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=32.83,39.73");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=33.25,113.16");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=33.45,187.85");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=78.36,167.71");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=58.53,83.94");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=79.46,81.06");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=30.67,83.77");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=113.51,139.06");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=120.45,90.70");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=162.51,88.70");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=151.96,54.06");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=187.20,12.09");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=229.90,90.49");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=236.12,109.98");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=249.96,126.71");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=152.87,119.02");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=147.11,210.89");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=145.33,146.36");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=135.64,137.55");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=124.17,173.42");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=106.21,176.88");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=113.86,193.95");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=71.24,191.22");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=116.67,268.49");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=84.72,290.86");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=145.27,275.45");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=93.07,263.17");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=73.73,336.35");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=24.42,335.79");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=47.03,288.26");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=27.57,356.77");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=1.47,329.34");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=42.38,332.71");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=40.63,357.93");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=54.61,353.06");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=60.84,316.09");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=26.26,300.47");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=60.90,343.34");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=117.09,287.84");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=84.35,352.31");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=78.28,377.61");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=47.67,392.98");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=112.41,365.96");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=154.51,367.73");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=230.52,331.89");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=214.85,299.02");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=200.71,232.59");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=220.06,177.72");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=218.08,99.29");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=51.67,92.63");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=80.26,125.21");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=9.73,184.07");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=93.16,223.03");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=101.17,154.14");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=44.42,47.03");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=94.36,134.82");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=4.67,42.69");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=64.48,136.77");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=128.49,65.34");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=124.27,113.22");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=89.72,54.98");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=235.86,47.36");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=178.82,53.62");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=294.21,46.86");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=198.32,117.74");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=188.16,131.16");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=128.00,230.64");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=130.71,163.07");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=114.04,163.43");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=175.29,196.42");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=159.33,156.50");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=104.58,205.68");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=25.91,216.24");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=158.44,296.12");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=95.91,244.93");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=145.82,252.58");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=162.45,239.15");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=124.88,314.25");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=39.73,302.87");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=10.16,199.10");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=4.26,379.15");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=65.16,357.46");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=56.46,364.29");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=27.75,370.42");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=21.90,275.42");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=34.75,345.12");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=111.18,279.46");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=132.33,276.38");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=132.51,346.12");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=99.00,323.80");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=105.63,380.76");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=36.78,383.17");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=127.67,328.95");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=142.76,366.54");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=189.29,281.69");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=212.28,322.99");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=134.31,244.19");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=175.39,101.25");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=167.31,40.06");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=39.14,76.28");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=69.18,41.24");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=4.05,59.31");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=70.98,236.59");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=7.35,163.41");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=19.27,72.92");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=144.42,113.59");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=65.98,119.15");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=117.96,101.56");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=192.40,99.42");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=208.75,66.14");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=121.96,34.73");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=152.26,19.21");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=200.24,6.06");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=248.45,154.63");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=303.72,97.60");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=134.72,122.82");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=146.53,228.64");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=187.74,58.79");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=169.75,121.92");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=82.65,220.46");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=120.76,214.61");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=141.90,164.30");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=89.43,96.98");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=163.11,305.03");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=103.34,290.59");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=223.78,282.15");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=87.55,274.97");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=12.10,386.64");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=13.18,328.58");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=19.03,319.34");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=78.42,305.82");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=68.94,324.31");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=80.01,326.16");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=68.33,379.68");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=120.03,378.32");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=55.94,233.16");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=13.33,240.68");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=2.77,292.36");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=45.40,228.83");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=99.02,307.94");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=89.36,339.07");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=93.90,388.90");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=155.82,384.69");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=223.63,391.30");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=214.17,335.16");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=192.06,314.42");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=233.85,242.14");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=230.68,132.52");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=261.12,126.59");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=150.45,90.86");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=61.86,61.82");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=97.70,120.84");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=85.03,177.12");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=1.35,225.49");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=15.08,113.54");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=66.84,90.96");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=25.99,141.11");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=82.71,108.73");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=163.78,104.91");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=182.51,81.54");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=113.54,64.29");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=179.87,4.97");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=170.04,71.73");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=171.70,147.24");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=235.06,155.04");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=233.85,170.33");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=238.25,180.36");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=174.31,112.24");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=140.72,72.24");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=187.52,188.69");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=187.17,230.10");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=135.87,214.82");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=69.82,265.90");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=41.58,267.89");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=152.86,268.54");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=182.23,292.33");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=88.96,321.64");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=139.66,306.78");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=64.43,292.32");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=49.54,258.81");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=60.99,390.83");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=4.21,273.00");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=108.07,350.19");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=37.46,395.88");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=44.44,347.80");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=52.74,274.73");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=99.94,272.22");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=107.89,398.65");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=132.33,291.30");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=116.98,328.48");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=28.55,391.13");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=52.08,335.53");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=82.04,392.96");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=167.14,350.28");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=185.80,352.49");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=159.51,357.41");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=194.07,218.85");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=275.41,153.98");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=174.76,175.48");
    }

}

