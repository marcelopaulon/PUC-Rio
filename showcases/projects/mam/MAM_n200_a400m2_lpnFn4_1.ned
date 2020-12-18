
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_1
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
        @display("p=134.64,128.68");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=122.60,143.61");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=57.26,174.84");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=53.92,200.63");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=50.26,214.12");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=72.67,225.06");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=65.24,200.15");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=29.16,286.15");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=27.29,313.66");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=73.11,277.74");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=69.55,245.35");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=34.09,243.18");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=34.93,265.43");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=76.88,294.28");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=130.24,306.67");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=112.18,333.37");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=127.05,337.17");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=121.16,347.29");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=219.74,338.10");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=168.22,356.51");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=181.61,385.91");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=90.62,364.70");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=160.30,386.89");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=169.67,399.73");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=154.96,365.39");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=160.49,342.53");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=251.50,360.15");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=280.08,289.69");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=310.36,234.51");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=282.60,247.68");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=373.87,255.48");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=381.11,230.33");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=374.21,203.05");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=353.91,183.98");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=273.47,208.21");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=195.45,167.77");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=209.29,120.09");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=232.49,161.38");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=286.03,105.69");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=298.08,126.94");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=277.33,112.43");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=264.11,106.47");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=271.58,37.31");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=351.07,90.85");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=360.76,93.60");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=395.95,81.11");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=352.17,80.78");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=326.71,102.36");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=334.40,41.24");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=95.16,89.61");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=212.93,179.20");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=68.64,141.51");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=9.96,105.47");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=77.08,256.48");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=21.50,202.49");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=35.99,145.67");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=11.47,268.98");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=46.18,272.01");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=1.54,271.33");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=167.85,306.17");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=108.05,259.78");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=101.47,275.06");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=17.18,325.20");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=61.07,358.64");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=75.70,320.30");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=41.34,293.23");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=151.54,323.29");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=114.20,285.37");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=281.41,330.90");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=96.15,309.81");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=176.67,332.31");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=66.94,376.77");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=171.38,387.04");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=201.88,399.37");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=119.12,374.70");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=239.34,344.37");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=266.00,321.43");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=256.35,255.45");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=291.00,273.81");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=216.13,314.63");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=358.09,167.41");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=345.72,137.48");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=306.64,211.77");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=338.87,182.27");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=319.30,250.73");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=125.09,209.00");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=188.24,121.01");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=215.02,136.12");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=298.02,84.03");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=221.40,65.01");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=340.28,63.88");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=299.37,104.39");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=297.67,45.45");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=321.48,62.46");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=287.19,51.53");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=375.66,45.24");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=362.23,153.51");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=284.71,63.06");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=313.64,0.52");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=26.84,151.39");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=149.44,160.30");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=122.21,94.96");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=103.83,174.43");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=82.25,118.33");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=16.42,164.84");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=82.02,184.56");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=59.31,116.00");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=21.52,292.80");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=41.56,361.43");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=89.38,273.05");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=50.02,281.84");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=34.21,231.25");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=22.24,272.15");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=116.83,299.22");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=178.28,310.64");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=91.60,327.66");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=141.80,354.20");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=28.14,367.81");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=291.62,317.42");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=229.58,394.40");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=254.85,386.70");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=96.73,351.96");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=194.88,358.27");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=263.38,398.29");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=106.55,305.35");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=241.37,378.10");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=253.83,345.78");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=253.08,286.76");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=319.31,295.16");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=334.87,261.53");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=356.59,300.45");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=345.53,208.15");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=374.72,221.96");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=348.99,172.10");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=293.13,192.63");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=251.35,204.41");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=187.72,60.64");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=239.17,127.38");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=268.83,198.34");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=323.58,164.79");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=313.92,83.38");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=244.44,159.50");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=262.56,44.48");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=379.77,172.29");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=385.89,7.54");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=377.25,34.02");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=366.51,75.36");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=333.59,133.82");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=270.53,27.01");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=80.65,169.05");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=79.34,100.85");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=68.32,211.70");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=86.19,152.80");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=25.45,189.75");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=43.74,198.17");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=13.20,228.76");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=108.71,139.12");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=96.92,253.66");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=3.92,284.41");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=52.16,314.38");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=143.87,192.43");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=62.05,163.24");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=102.28,210.68");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=34.65,350.22");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=173.81,321.47");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=62.45,294.16");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=80.81,336.96");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=41.20,341.45");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=216.10,363.17");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=155.25,279.39");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=196.65,381.95");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=128.86,292.47");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=149.00,386.19");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=263.45,372.59");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=174.95,343.17");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=134.57,317.60");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=264.82,356.81");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=269.71,242.19");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=313.36,220.27");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=236.82,184.47");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=359.05,255.53");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=385.75,265.55");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=389.39,169.17");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=362.55,117.94");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=258.36,276.77");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=225.08,245.35");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=266.48,116.65");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=252.44,224.05");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=210.34,153.83");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=316.66,119.74");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=300.16,163.04");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=278.59,132.95");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=233.72,15.22");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=376.49,105.25");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=397.67,54.52");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=343.93,19.79");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=375.46,80.16");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=313.95,109.41");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=328.69,49.62");
    }

}

