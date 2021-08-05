
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_2
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
        @display("p=168.74,99.74");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=142.11,41.93");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=97.91,41.56");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=117.73,38.42");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=83.04,99.32");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=50.25,137.26");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=65.03,182.46");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=15.65,262.69");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=32.24,253.87");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=14.56,178.05");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=22.79,230.84");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=22.03,215.18");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=91.22,260.34");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=115.70,285.21");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=90.35,290.16");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=94.20,321.62");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=107.38,419.85");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=42.75,419.07");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=74.04,401.02");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=124.13,484.69");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=136.64,437.76");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=95.88,421.03");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=55.42,429.78");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=23.60,351.98");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=49.36,395.65");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=61.81,343.38");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=84.83,361.49");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=45.44,314.44");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=69.86,329.44");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=115.17,305.64");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=126.37,252.38");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=124.68,194.66");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=118.70,181.34");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=113.42,201.50");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=142.95,111.37");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=72.49,105.31");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=117.72,80.79");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=92.42,76.85");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=25.54,65.25");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=104.03,20.04");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=96.63,31.20");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=108.46,63.84");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=62.40,20.43");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=38.18,32.39");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=36.14,17.30");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=7.29,27.99");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=23.20,18.34");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=21.97,43.68");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=80.81,28.36");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=44.01,59.70");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=217.01,142.01");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=177.20,50.38");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=79.26,119.24");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=93.27,11.21");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=6.74,136.57");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=113.32,144.66");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=20.95,122.08");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=34.42,227.20");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=46.74,269.90");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=10.77,212.54");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=8.71,242.30");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=14.84,146.18");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=53.60,241.37");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=35.22,339.72");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=153.26,251.58");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=10.67,333.85");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=105.42,474.39");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=46.29,454.98");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=56.89,411.75");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=148.46,554.66");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=137.61,487.17");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=116.01,358.42");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=39.17,486.18");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=4.89,257.40");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=16.67,342.89");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=53.95,335.23");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=48.47,294.93");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=21.96,365.41");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=74.00,353.95");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=84.65,281.32");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=189.29,204.95");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=129.97,212.47");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=97.32,203.34");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=121.85,297.37");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=189.56,115.05");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=77.14,84.92");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=147.17,58.98");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=120.16,70.56");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=11.29,56.92");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=127.23,48.48");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=49.65,21.77");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=95.40,126.61");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=118.90,102.46");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=71.95,53.24");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=71.36,9.34");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=5.55,91.61");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=54.12,62.30");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=36.67,69.98");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=116.53,10.47");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=108.32,108.18");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=170.85,135.52");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=134.48,12.40");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=185.91,28.04");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=52.57,8.51");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=125.23,152.49");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=146.80,142.52");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=108.76,153.81");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=2.92,283.05");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=96.58,277.70");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=15.24,188.28");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=34.66,237.36");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=30.82,294.97");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=96.51,358.36");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=76.02,320.05");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=164.75,225.87");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=59.78,323.08");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=75.36,372.17");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=92.81,335.16");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=81.42,391.01");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=48.09,523.35");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=126.08,387.34");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=64.72,365.48");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=67.77,471.00");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=4.22,299.94");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=64.69,376.54");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=75.75,430.19");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=34.94,393.63");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=13.95,291.47");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=135.78,396.10");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=142.71,323.64");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=194.76,242.56");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=106.79,240.22");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=83.84,144.08");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=88.11,244.11");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=157.74,173.18");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=90.34,61.87");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=181.03,85.92");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=163.76,89.99");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=30.63,79.01");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=31.79,45.88");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=50.56,100.65");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=184.32,126.22");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=11.83,6.48");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=80.62,47.21");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=60.00,105.73");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=2.36,81.70");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=34.96,3.99");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=5.61,70.09");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=62.20,46.16");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=165.31,32.15");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=217.46,58.90");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=155.99,9.58");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=120.86,134.85");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=112.15,25.97");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=63.39,152.59");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=57.23,171.99");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=55.28,186.52");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=24.74,273.46");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=20.18,311.55");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=5.67,167.76");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=69.71,248.00");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=27.36,180.65");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=116.40,256.42");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=111.12,273.36");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=160.70,311.61");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=117.69,322.00");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=137.49,384.64");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=4.23,350.41");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=98.26,373.12");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=158.46,484.74");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=156.48,420.10");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=189.91,451.70");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=11.13,415.34");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=1.59,313.83");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=60.70,454.82");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=9.13,359.81");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=47.48,363.65");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=84.91,230.95");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=67.58,233.54");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=97.25,344.98");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=144.80,245.02");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=165.77,158.95");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=68.40,198.36");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=78.77,197.51");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=197.87,98.96");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=88.83,108.05");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=120.44,162.34");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=105.37,89.30");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=21.85,159.35");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=76.09,65.44");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=60.54,0.73");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=66.45,124.82");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=124.88,1.50");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=65.57,30.50");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=67.46,95.87");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=1.34,17.28");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=61.27,87.46");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=5.40,111.18");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=129.68,80.23");
    }

}

