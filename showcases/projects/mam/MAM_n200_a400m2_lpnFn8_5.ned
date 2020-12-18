
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_5
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=88.64,204.00");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=78.41,294.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=137.75,331.46");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=76.96,310.33");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=157.16,337.63");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=117.25,287.21");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=127.92,243.21");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=134.22,193.76");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=104.79,189.64");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=133.06,173.31");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=123.07,163.66");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=145.69,198.85");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=132.62,225.86");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=123.48,324.25");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=67.63,296.56");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=3.57,314.42");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=76.67,328.13");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=15.51,389.40");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=35.10,323.57");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=108.56,387.27");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=16.50,357.54");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=84.21,368.60");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=139.64,266.00");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=182.21,214.60");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=64.68,361.82");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=33.42,263.10");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=70.81,349.31");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=68.88,378.91");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=120.22,386.88");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=236.91,300.47");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=109.07,321.08");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=132.84,151.30");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=107.67,154.00");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=57.62,260.77");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=167.87,109.65");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=56.33,202.08");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=156.55,180.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=88.31,244.33");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=165.87,269.66");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=59.72,320.11");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=12.24,242.63");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=56.18,339.87");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=95.34,364.11");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=34.32,354.37");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=199.66,383.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=26.36,347.21");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=89.98,354.18");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=103.67,242.71");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=139.77,233.02");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=42.61,240.70");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=74.07,177.15");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=152.98,359.07");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=182.60,312.36");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=6.72,379.12");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=199.88,342.70");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=97.93,284.80");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=36.31,223.87");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=155.58,235.52");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=194.50,229.69");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=157.76,156.65");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=91.26,71.11");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=165.26,244.71");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=152.25,170.06");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=153.35,253.32");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=25.21,239.74");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=13.33,318.21");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=3.45,297.76");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=29.61,311.82");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=44.40,314.06");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=188.79,398.36");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=79.36,381.30");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=105.65,274.77");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=214.15,276.14");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=144.37,129.89");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=143.49,308.90");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=159.58,137.61");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=113.82,214.88");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=190.18,328.67");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=92.87,315.11");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=91.60,375.49");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=20.64,304.50");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=107.43,257.20");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=207.72,139.76");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=125.54,204.48");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=76.15,236.41");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=70.68,190.12");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=156.48,192.29");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=192.15,166.41");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=177.49,341.82");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=23.29,365.50");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=39.91,255.05");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=132.16,289.11");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=27.18,378.42");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=12.82,267.81");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=39.78,378.53");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=47.46,300.54");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=81.37,338.88");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=214.37,258.33");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=170.29,194.32");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=99.02,264.39");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=94.94,228.26");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=116.20,336.98");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=173.61,300.93");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=52.07,226.70");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=220.55,329.65");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=48.59,347.11");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=67.20,220.86");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=95.19,211.75");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=192.81,199.22");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=111.46,95.47");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=168.57,169.89");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=217.54,143.26");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=162.21,290.68");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=212.99,347.79");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=42.54,270.36");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=57.98,381.64");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=55.52,356.86");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=95.66,333.88");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=32.28,286.15");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=113.16,373.11");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=41.19,365.94");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=88.36,298.38");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=143.22,246.00");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=210.37,203.69");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=85.33,217.29");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=102.19,173.64");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=138.89,297.58");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=131.71,317.32");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=19.38,285.70");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=159.26,301.80");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=130.06,272.73");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=88.60,262.43");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=103.42,163.10");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=136.11,122.44");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=142.50,181.56");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=71.89,201.32");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=115.88,229.00");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=149.38,226.70");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=163.99,357.78");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=57.76,250.15");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=51.98,367.61");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=145.59,351.04");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=103.34,354.49");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=123.72,308.20");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=100.14,394.21");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=28.82,389.86");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=74.57,365.82");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=146.76,285.13");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=153.12,265.52");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=110.57,295.62");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=94.07,166.74");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=81.04,270.14");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=148.46,378.00");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=138.29,381.99");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=124.68,376.86");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=87.66,327.31");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=142.08,210.93");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=123.15,119.92");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=66.91,151.37");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=210.40,115.99");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=116.73,239.76");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=189.94,116.37");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=208.53,177.68");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=180.36,365.32");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=123.17,358.15");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=14.10,226.80");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=40.83,332.88");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=67.24,389.02");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=52.15,330.47");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=134.72,342.73");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=8.00,345.94");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=5.74,327.37");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=188.82,345.28");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=184.97,235.82");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=197.47,280.84");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=93.86,138.81");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=95.20,385.10");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=160.48,383.08");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=10.73,368.43");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=174.76,354.39");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=175.43,206.50");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=123.42,220.15");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=121.51,188.50");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=167.12,230.75");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=113.31,78.79");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=177.51,223.48");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=235.55,232.64");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=197.57,262.21");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=206.14,368.24");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=72.16,250.74");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=1.89,265.22");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=148.14,397.90");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=41.19,391.00");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=69.55,271.12");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=115.56,347.89");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=43.24,283.05");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=21.38,333.48");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=224.18,311.24");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=164.26,121.98");
    }

}

