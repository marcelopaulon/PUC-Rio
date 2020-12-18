
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn12-5
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
        @display("p=8.00,304.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=88.66,314.31");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=183.36,335.38");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=197.71,325.09");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=208.16,314.37");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=129.34,326.03");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=110.12,394.16");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=139.52,413.85");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=127.07,357.81");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=119.85,367.16");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=100.64,383.06");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=87.09,430.30");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=52.58,521.16");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=39.80,577.50");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=29.05,589.24");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=67.11,572.26");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=44.10,551.15");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=97.51,283.75");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=68.44,291.55");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=197.33,288.98");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=265.71,340.17");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=270.30,307.32");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=101.37,305.68");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=129.17,387.37");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=61.39,396.83");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=117.73,300.57");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=157.84,372.05");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=89.68,391.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=79.01,448.70");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=35.47,557.00");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=114.13,530.84");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=77.63,639.68");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=78.99,565.57");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=27.40,576.96");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=50.86,339.25");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=19.56,325.76");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=176.23,372.40");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=241.28,249.89");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=238.35,283.16");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=118.29,324.99");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=56.56,433.65");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=146.19,421.51");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=158.81,348.50");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=56.22,326.17");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=168.72,341.31");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=90.53,444.72");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=60.37,507.10");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=115.01,641.15");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=24.34,514.81");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=40.93,601.09");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=11.18,566.26");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=13.15,295.25");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=17.21,284.42");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=179.04,286.04");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=168.74,268.30");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=240.60,387.46");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=189.47,370.84");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=153.77,314.06");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=157.85,428.57");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=85.40,366.42");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=115.68,436.42");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=18.56,341.43");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=94.90,356.28");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=18.93,503.29");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=110.43,594.32");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=55.87,642.64");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=62.63,522.84");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=81.71,540.45");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=69.65,308.96");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=14.88,253.75");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=246.56,272.04");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=251.08,318.53");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=235.08,324.12");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=114.41,290.77");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=162.45,410.49");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=124.04,408.86");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=188.37,400.54");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=75.71,404.39");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=107.94,415.87");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=64.02,380.45");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=48.77,594.30");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=21.75,540.09");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=27.07,639.52");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=138.23,528.70");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=10.40,493.45");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=0.53,399.19");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=56.43,249.20");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=226.66,372.08");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=122.41,268.21");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=167.56,315.60");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=141.01,299.36");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=94.59,470.63");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=214.45,406.91");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=164.10,382.94");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=119.74,339.94");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=11.10,380.07");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=91.22,415.79");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=12.21,555.14");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=98.60,642.35");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=32.20,606.73");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=79.60,593.01");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=64.22,536.33");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=30.06,350.25");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=9.58,320.05");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=193.29,342.42");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=162.50,399.26");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=195.68,306.54");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=159.51,294.02");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=132.54,459.06");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=168.15,434.90");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=151.30,272.69");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=157.47,280.72");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=94.11,327.04");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=69.32,460.21");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=55.99,617.56");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=43.63,563.34");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=15.51,659.27");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=51.81,656.44");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=90.14,520.09");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=2.75,288.74");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=98.39,248.75");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=157.58,361.29");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=248.30,370.19");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=134.92,347.54");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=79.59,258.03");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=81.46,418.72");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=159.21,332.04");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=180.65,423.66");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=110.28,371.86");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=141.37,334.58");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=95.76,486.01");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=68.19,441.53");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=2.12,556.87");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=26.78,628.20");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=55.32,553.13");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=39.75,526.20");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=57.53,309.70");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=72.49,350.82");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=181.64,256.14");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=256.58,380.97");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=204.42,256.51");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=119.20,313.19");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=89.93,342.55");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=102.78,442.01");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=158.23,443.52");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=53.86,404.93");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=37.79,357.42");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=54.60,447.83");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=83.14,606.55");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=85.26,489.91");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=70.45,648.61");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=39.84,540.24");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=9.32,604.09");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=21.00,355.84");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=63.38,278.80");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=214.65,349.12");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=221.59,230.93");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=146.13,263.74");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=175.27,385.54");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=150.70,384.70");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=216.36,462.90");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=186.07,278.90");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=114.90,352.77");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=25.48,386.47");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=29.61,367.33");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=44.40,479.74");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=4.23,655.75");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=34.24,646.88");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=54.80,584.99");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=16.12,593.40");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=40.78,306.79");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=105.46,326.67");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=234.31,269.67");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=184.27,323.57");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=275.46,348.79");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=147.55,284.36");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=75.21,361.32");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=207.85,439.62");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=135.29,364.82");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=44.97,384.15");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=116.66,386.36");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=7.80,442.77");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=99.35,534.84");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=9.81,635.70");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=67.31,595.65");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=85.96,663.97");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=93.61,550.20");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=52.56,298.08");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=87.73,302.55");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=200.83,349.33");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=210.66,325.03");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=238.87,220.61");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=171.96,326.30");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=62.80,420.40");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=99.18,459.49");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=72.03,338.02");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=117.31,464.74");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=46.21,370.77");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=47.33,462.68");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=0.65,523.69");
    }

}

