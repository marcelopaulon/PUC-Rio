
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_2
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
        @display("p=133.36,385.77");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=107.87,384.66");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=114.72,377.33");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=97.35,321.51");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=34.04,371.35");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=90.35,353.33");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=23.91,312.11");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=103.56,273.59");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=177.51,230.77");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=176.80,255.36");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=241.40,205.62");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=257.33,161.50");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=232.17,186.50");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=192.64,222.91");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=108.43,234.19");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=101.72,201.04");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=109.86,325.46");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=160.17,368.88");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=173.79,394.43");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=140.17,338.82");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=43.02,269.45");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=4.32,310.23");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=140.90,270.41");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=117.76,278.96");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=166.02,259.61");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=213.40,171.68");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=198.26,263.81");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=296.96,122.55");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=333.61,152.67");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=225.67,166.88");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=138.42,228.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=131.35,195.06");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=113.85,124.09");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=87.54,299.12");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=143.82,386.80");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=119.66,392.41");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=157.56,352.70");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=111.22,350.45");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=38.22,327.15");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=74.73,307.09");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=13.94,313.47");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=14.12,240.49");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=208.34,229.24");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=148.34,203.85");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=258.05,265.55");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=267.49,162.08");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=221.94,182.51");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=195.95,304.31");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=60.69,222.06");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=15.23,161.18");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=85.21,373.39");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=78.92,356.69");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=44.27,344.98");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=121.30,304.21");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=179.75,291.90");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=80.01,342.52");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=1.26,373.12");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=13.69,331.37");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=126.29,231.71");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=156.28,156.38");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=137.31,301.85");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=185.06,192.96");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=248.05,69.22");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=265.87,141.78");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=185.24,133.69");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=90.70,236.54");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=84.11,113.15");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=110.98,298.64");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=74.92,378.59");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=151.56,341.46");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=46.51,371.74");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=36.81,353.88");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=38.35,296.30");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=175.39,370.62");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=15.77,301.37");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=63.65,279.70");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=203.01,199.91");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=190.86,323.96");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=309.34,227.87");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=204.78,141.61");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=272.57,200.04");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=223.16,203.31");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=24.76,225.23");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=37.21,135.71");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=152.74,244.48");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=218.08,348.13");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=143.08,372.84");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=23.99,390.18");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=63.77,324.06");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=26.81,293.85");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=73.38,286.69");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=46.42,309.83");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=142.28,238.92");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=183.73,178.43");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=225.84,218.35");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=268.77,231.04");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=244.61,166.25");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=278.64,105.05");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=214.17,273.52");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=126.85,323.38");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=123.90,134.82");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=191.78,280.61");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=146.90,356.19");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=131.43,333.41");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=199.48,362.90");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=121.33,265.07");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=49.26,328.22");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=165.53,343.86");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=54.91,234.91");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=147.82,220.28");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=175.57,157.20");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=204.07,276.07");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=266.59,175.93");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=324.26,138.72");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=232.41,198.88");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=219.47,285.15");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=58.03,252.79");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=81.11,219.62");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=58.95,352.18");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=135.27,399.49");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=56.79,338.05");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=204.06,371.86");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=90.22,341.46");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=4.13,345.60");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=24.00,344.99");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=48.16,256.17");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=85.28,287.46");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=162.92,245.09");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=184.35,262.21");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=195.13,184.55");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=286.70,210.53");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=231.97,262.61");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=211.25,244.68");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=110.25,258.00");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=54.91,184.52");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=131.81,287.63");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=100.36,336.41");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=73.41,328.57");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=206.55,384.21");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=88.02,311.82");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=28.05,362.92");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=145.83,293.48");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=118.29,338.04");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=70.40,236.94");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=191.80,291.82");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=231.03,244.08");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=260.02,283.23");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=213.09,206.31");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=237.05,225.42");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=249.10,233.69");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=67.77,154.56");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=109.11,169.06");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=26.46,252.06");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=227.52,381.63");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=85.61,394.29");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=44.56,381.55");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=135.86,258.64");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=15.13,362.04");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=85.42,326.57");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=51.70,281.82");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=61.90,295.18");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=171.42,216.34");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=227.40,325.41");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=306.85,181.47");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=267.51,215.61");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=208.36,187.17");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=171.33,280.43");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=154.91,281.52");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=102.30,246.58");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=37.63,222.72");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=74.68,365.91");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=185.49,361.94");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=98.35,389.85");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=126.21,254.50");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=38.42,316.46");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=112.00,314.73");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=41.54,395.09");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=13.19,272.38");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=166.81,228.48");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=181.96,240.50");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=291.39,268.22");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=203.68,130.26");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=287.24,243.49");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=185.92,162.13");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=149.70,193.06");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=121.00,222.71");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=148.56,256.22");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=195.89,380.58");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=62.95,313.66");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=133.57,362.67");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=61.79,381.40");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=56.18,390.78");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=104.97,286.34");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=24.60,263.68");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=96.69,228.07");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=126.59,176.89");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=150.88,324.95");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=328.09,166.10");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=239.27,111.83");
    }

}

