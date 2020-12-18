
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM200-3
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
        @display("p=350.00,13.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=306.75,75.49");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=362.33,3.87");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=375.55,15.76");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=379.02,3.72");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=339.58,74.00");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=365.93,77.97");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=399.69,55.73");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=383.85,68.05");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=310.05,49.68");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=285.91,33.16");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=285.89,56.95");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=243.00,8.24");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=178.05,30.61");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=126.27,104.12");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=116.48,68.15");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=92.19,65.73");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=83.49,104.19");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=6.19,115.93");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=31.07,150.04");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=66.63,129.82");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=129.85,139.88");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=168.35,198.75");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=99.94,170.25");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=136.17,215.39");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=121.27,202.28");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=91.98,224.22");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=140.75,235.61");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=128.58,226.01");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=66.48,228.20");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=38.64,201.21");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=36.23,161.32");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=45.32,88.33");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=109.37,137.96");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=18.59,129.43");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=62.76,167.32");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=34.06,103.72");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=122.72,113.79");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=153.60,37.12");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=201.45,11.18");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=223.01,88.62");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=257.08,28.45");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=197.98,89.14");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=210.07,46.41");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=118.13,36.14");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=157.84,5.07");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=76.40,7.41");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=91.28,87.00");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=36.59,75.39");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=24.37,77.90");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=53.85,30.34");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=24.42,22.16");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=13.15,92.70");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=35.53,175.52");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=99.74,118.43");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=56.01,91.70");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=26.27,62.33");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=65.69,7.72");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=38.50,15.70");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=94.25,30.35");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=6.08,49.77");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=42.70,29.33");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=81.53,61.02");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=69.02,147.04");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=5.70,217.61");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=11.19,226.78");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=0.20,226.13");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=53.74,270.14");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=44.52,252.82");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=164.77,232.71");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=129.49,290.34");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=138.13,301.68");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=94.62,286.03");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=161.28,248.12");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=174.23,294.51");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=179.32,279.53");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=162.56,350.00");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=155.49,294.51");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=177.06,268.72");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=134.08,332.27");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=99.81,383.66");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=46.88,379.28");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=95.68,366.23");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=59.43,293.02");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=99.85,355.63");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=90.44,325.22");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=149.59,352.28");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=104.39,331.06");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=174.05,332.88");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=136.28,343.65");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=72.01,357.30");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=75.95,391.51");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=110.54,307.07");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=21.79,308.19");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=33.59,297.71");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=24.11,222.77");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=109.93,265.15");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=118.70,296.63");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=162.72,388.71");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=187.74,335.05");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=266.61,309.18");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=286.56,289.65");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=348.93,283.50");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=217.49,279.74");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=235.36,309.32");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=245.13,312.15");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=203.41,342.71");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=226.33,350.56");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=237.03,375.76");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=172.92,368.12");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=184.49,322.87");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=201.59,361.36");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=202.60,378.02");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=184.33,297.32");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=243.36,241.16");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=304.53,261.29");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=243.31,329.83");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=166.99,324.96");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=209.19,303.52");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=214.17,326.81");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=193.72,389.52");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=257.66,399.27");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=239.82,286.90");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=248.42,385.28");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=219.32,392.10");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=307.81,36.74");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=355.07,129.24");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=313.31,11.11");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=391.49,38.50");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=356.28,23.79");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=332.67,135.88");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=356.73,60.32");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=357.41,90.20");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=379.14,80.78");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=351.91,49.36");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=296.67,84.96");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=231.69,47.10");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=211.34,78.70");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=152.81,47.16");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=176.50,156.35");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=73.59,98.73");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=158.46,19.35");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=81.03,46.28");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=13.63,108.63");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=21.35,140.40");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=63.02,47.12");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=205.49,156.01");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=174.85,112.51");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=113.94,158.64");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=86.41,181.50");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=152.51,168.18");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=105.19,237.21");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=99.52,198.73");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=76.78,282.80");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=81.51,163.16");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=19.29,263.10");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=3.59,184.66");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=12.59,74.54");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=156.98,123.39");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=2.80,201.31");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=14.57,152.01");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=30.71,114.60");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=106.87,71.25");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=145.51,20.05");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=201.90,34.79");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=271.04,160.30");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=275.62,48.04");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=183.58,123.98");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=158.35,108.87");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=166.95,10.59");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=197.96,59.82");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=114.48,8.18");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=116.31,50.69");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=57.09,142.39");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=98.38,52.42");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=82.61,79.58");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=13.87,25.56");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=22.93,181.20");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=42.23,146.46");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=163.36,141.94");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=70.52,64.31");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=0.76,38.86");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=51.79,17.77");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=25.89,41.80");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=82.07,122.42");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=3.95,101.49");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=105.64,18.71");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=19.69,6.13");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=130.96,175.97");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=71.83,216.30");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=61.29,203.88");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=17.57,165.10");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=6.28,258.24");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=77.45,300.00");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=169.30,209.82");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=197.24,231.68");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=97.72,301.27");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=79.05,266.00");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=117.57,256.96");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=150.94,199.12");
    }

    host_lpn_201: <default("SensorNode")> like INetworkNode {
        @display("p=224.64,231.67");
    }

    host_lpn_202: <default("SensorNode")> like INetworkNode {
        @display("p=144.22,323.63");
    }

    host_lpn_203: <default("SensorNode")> like INetworkNode {
        @display("p=123.96,372.91");
    }

    host_lpn_204: <default("SensorNode")> like INetworkNode {
        @display("p=128.74,270.82");
    }

    host_lpn_205: <default("SensorNode")> like INetworkNode {
        @display("p=127.03,321.26");
    }

    host_lpn_206: <default("SensorNode")> like INetworkNode {
        @display("p=150.26,315.49");
    }

    host_lpn_207: <default("SensorNode")> like INetworkNode {
        @display("p=63.89,394.54");
    }

    host_lpn_208: <default("SensorNode")> like INetworkNode {
        @display("p=89.87,388.49");
    }

    host_lpn_209: <default("SensorNode")> like INetworkNode {
        @display("p=24.08,281.72");
    }

    host_lpn_210: <default("SensorNode")> like INetworkNode {
        @display("p=97.73,340.13");
    }

    host_lpn_211: <default("SensorNode")> like INetworkNode {
        @display("p=8.11,356.31");
    }

    host_lpn_212: <default("SensorNode")> like INetworkNode {
        @display("p=133.14,360.61");
    }

    host_lpn_213: <default("SensorNode")> like INetworkNode {
        @display("p=90.49,351.96");
    }

    host_lpn_214: <default("SensorNode")> like INetworkNode {
        @display("p=230.47,363.97");
    }

    host_lpn_215: <default("SensorNode")> like INetworkNode {
        @display("p=178.71,352.35");
    }

    host_lpn_216: <default("SensorNode")> like INetworkNode {
        @display("p=40.39,318.24");
    }

    host_lpn_217: <default("SensorNode")> like INetworkNode {
        @display("p=47.91,329.86");
    }

    host_lpn_218: <default("SensorNode")> like INetworkNode {
        @display("p=182.26,250.44");
    }

    host_lpn_219: <default("SensorNode")> like INetworkNode {
        @display("p=57.66,315.94");
    }

    host_lpn_220: <default("SensorNode")> like INetworkNode {
        @display("p=16.86,351.20");
    }

    host_lpn_221: <default("SensorNode")> like INetworkNode {
        @display("p=42.41,135.83");
    }

    host_lpn_222: <default("SensorNode")> like INetworkNode {
        @display("p=73.89,191.78");
    }

    host_lpn_223: <default("SensorNode")> like INetworkNode {
        @display("p=191.54,307.00");
    }

    host_lpn_224: <default("SensorNode")> like INetworkNode {
        @display("p=189.81,359.51");
    }

    host_lpn_225: <default("SensorNode")> like INetworkNode {
        @display("p=152.20,369.82");
    }

    host_lpn_226: <default("SensorNode")> like INetworkNode {
        @display("p=276.65,315.29");
    }

    host_lpn_227: <default("SensorNode")> like INetworkNode {
        @display("p=279.53,267.31");
    }

    host_lpn_228: <default("SensorNode")> like INetworkNode {
        @display("p=328.96,328.53");
    }

    host_lpn_229: <default("SensorNode")> like INetworkNode {
        @display("p=306.98,245.70");
    }

    host_lpn_230: <default("SensorNode")> like INetworkNode {
        @display("p=212.33,349.83");
    }

    host_lpn_231: <default("SensorNode")> like INetworkNode {
        @display("p=253.64,282.90");
    }

    host_lpn_232: <default("SensorNode")> like INetworkNode {
        @display("p=248.35,292.89");
    }

    host_lpn_233: <default("SensorNode")> like INetworkNode {
        @display("p=287.68,361.53");
    }

    host_lpn_234: <default("SensorNode")> like INetworkNode {
        @display("p=301.68,305.65");
    }

    host_lpn_235: <default("SensorNode")> like INetworkNode {
        @display("p=259.01,360.80");
    }

    host_lpn_236: <default("SensorNode")> like INetworkNode {
        @display("p=205.57,278.27");
    }

    host_lpn_237: <default("SensorNode")> like INetworkNode {
        @display("p=237.87,345.79");
    }

    host_lpn_238: <default("SensorNode")> like INetworkNode {
        @display("p=182.39,398.78");
    }

    host_lpn_239: <default("SensorNode")> like INetworkNode {
        @display("p=220.00,242.91");
    }

    host_lpn_240: <default("SensorNode")> like INetworkNode {
        @display("p=240.15,182.23");
    }

    host_lpn_241: <default("SensorNode")> like INetworkNode {
        @display("p=267.21,324.29");
    }

    host_lpn_242: <default("SensorNode")> like INetworkNode {
        @display("p=253.34,247.19");
    }

    host_lpn_243: <default("SensorNode")> like INetworkNode {
        @display("p=213.38,291.80");
    }

    host_lpn_244: <default("SensorNode")> like INetworkNode {
        @display("p=227.05,301.72");
    }

    host_lpn_245: <default("SensorNode")> like INetworkNode {
        @display("p=162.44,306.91");
    }

    host_lpn_246: <default("SensorNode")> like INetworkNode {
        @display("p=182.46,376.39");
    }

    host_lpn_247: <default("SensorNode")> like INetworkNode {
        @display("p=290.83,327.98");
    }

    host_lpn_248: <default("SensorNode")> like INetworkNode {
        @display("p=222.66,260.82");
    }

    host_lpn_249: <default("SensorNode")> like INetworkNode {
        @display("p=232.63,399.58");
    }

    host_lpn_250: <default("SensorNode")> like INetworkNode {
        @display("p=301.60,337.03");
    }

    host_lpn_251: <default("SensorNode")> like INetworkNode {
        @display("p=343.67,25.23");
    }

    host_lpn_252: <default("SensorNode")> like INetworkNode {
        @display("p=298.29,11.54");
    }

    host_lpn_253: <default("SensorNode")> like INetworkNode {
        @display("p=272.77,16.68");
    }

    host_lpn_254: <default("SensorNode")> like INetworkNode {
        @display("p=380.32,43.69");
    }

    host_lpn_255: <default("SensorNode")> like INetworkNode {
        @display("p=395.93,20.74");
    }

    host_lpn_256: <default("SensorNode")> like INetworkNode {
        @display("p=276.19,85.28");
    }

    host_lpn_257: <default("SensorNode")> like INetworkNode {
        @display("p=286.17,134.77");
    }

    host_lpn_258: <default("SensorNode")> like INetworkNode {
        @display("p=391.02,103.21");
    }

    host_lpn_259: <default("SensorNode")> like INetworkNode {
        @display("p=318.35,88.48");
    }

    host_lpn_260: <default("SensorNode")> like INetworkNode {
        @display("p=327.80,51.46");
    }

    host_lpn_261: <default("SensorNode")> like INetworkNode {
        @display("p=260.08,53.19");
    }

    host_lpn_262: <default("SensorNode")> like INetworkNode {
        @display("p=354.82,104.01");
    }

    host_lpn_263: <default("SensorNode")> like INetworkNode {
        @display("p=252.58,1.19");
    }

    host_lpn_264: <default("SensorNode")> like INetworkNode {
        @display("p=237.89,34.76");
    }

    host_lpn_265: <default("SensorNode")> like INetworkNode {
        @display("p=141.68,58.11");
    }

    host_lpn_266: <default("SensorNode")> like INetworkNode {
        @display("p=107.44,57.15");
    }

    host_lpn_267: <default("SensorNode")> like INetworkNode {
        @display("p=73.25,75.35");
    }

    host_lpn_268: <default("SensorNode")> like INetworkNode {
        @display("p=135.56,161.84");
    }

    host_lpn_269: <default("SensorNode")> like INetworkNode {
        @display("p=4.95,65.15");
    }

    host_lpn_270: <default("SensorNode")> like INetworkNode {
        @display("p=81.48,135.65");
    }

    host_lpn_271: <default("SensorNode")> like INetworkNode {
        @display("p=0.70,152.97");
    }

    host_lpn_272: <default("SensorNode")> like INetworkNode {
        @display("p=136.67,132.48");
    }

    host_lpn_273: <default("SensorNode")> like INetworkNode {
        @display("p=209.65,166.69");
    }

    host_lpn_274: <default("SensorNode")> like INetworkNode {
        @display("p=191.85,207.02");
    }

    host_lpn_275: <default("SensorNode")> like INetworkNode {
        @display("p=230.72,202.57");
    }

    host_lpn_276: <default("SensorNode")> like INetworkNode {
        @display("p=97.11,260.16");
    }

    host_lpn_277: <default("SensorNode")> like INetworkNode {
        @display("p=90.29,239.87");
    }

    host_lpn_278: <default("SensorNode")> like INetworkNode {
        @display("p=157.15,221.71");
    }

    host_lpn_279: <default("SensorNode")> like INetworkNode {
        @display("p=102.14,320.29");
    }

    host_lpn_280: <default("SensorNode")> like INetworkNode {
        @display("p=70.62,237.74");
    }

    host_lpn_281: <default("SensorNode")> like INetworkNode {
        @display("p=49.17,189.08");
    }

    host_lpn_282: <default("SensorNode")> like INetworkNode {
        @display("p=86.98,146.04");
    }

    host_lpn_283: <default("SensorNode")> like INetworkNode {
        @display("p=43.71,55.99");
    }

    host_lpn_284: <default("SensorNode")> like INetworkNode {
        @display("p=116.73,80.61");
    }

    host_lpn_285: <default("SensorNode")> like INetworkNode {
        @display("p=56.82,178.76");
    }

    host_lpn_286: <default("SensorNode")> like INetworkNode {
        @display("p=153.00,210.04");
    }

    host_lpn_287: <default("SensorNode")> like INetworkNode {
        @display("p=34.70,47.30");
    }

    host_lpn_288: <default("SensorNode")> like INetworkNode {
        @display("p=160.47,89.24");
    }

    host_lpn_289: <default("SensorNode")> like INetworkNode {
        @display("p=141.05,123.42");
    }

    host_lpn_290: <default("SensorNode")> like INetworkNode {
        @display("p=259.11,15.96");
    }

    host_lpn_291: <default("SensorNode")> like INetworkNode {
        @display("p=230.35,135.62");
    }

    host_lpn_292: <default("SensorNode")> like INetworkNode {
        @display("p=262.00,93.34");
    }

    host_lpn_293: <default("SensorNode")> like INetworkNode {
        @display("p=180.38,94.34");
    }

    host_lpn_294: <default("SensorNode")> like INetworkNode {
        @display("p=147.58,3.24");
    }

    host_lpn_295: <default("SensorNode")> like INetworkNode {
        @display("p=153.93,57.74");
    }

    host_lpn_296: <default("SensorNode")> like INetworkNode {
        @display("p=173.06,81.36");
    }

    host_lpn_297: <default("SensorNode")> like INetworkNode {
        @display("p=91.62,0.53");
    }

    host_lpn_298: <default("SensorNode")> like INetworkNode {
        @display("p=116.43,123.58");
    }

    host_lpn_299: <default("SensorNode")> like INetworkNode {
        @display("p=48.70,69.93");
    }

    host_lpn_300: <default("SensorNode")> like INetworkNode {
        @display("p=1.02,87.87");
    }

    host_lpn_301: <default("SensorNode")> like INetworkNode {
        @display("p=10.93,15.07");
    }

    host_lpn_302: <default("SensorNode")> like INetworkNode {
        @display("p=87.86,21.37");
    }

    host_lpn_303: <default("SensorNode")> like INetworkNode {
        @display("p=46.97,173.10");
    }

    host_lpn_304: <default("SensorNode")> like INetworkNode {
        @display("p=20.52,199.56");
    }

    host_lpn_305: <default("SensorNode")> like INetworkNode {
        @display("p=136.32,104.50");
    }

    host_lpn_306: <default("SensorNode")> like INetworkNode {
        @display("p=119.54,92.86");
    }

    host_lpn_307: <default("SensorNode")> like INetworkNode {
        @display("p=53.52,157.57");
    }

    host_lpn_308: <default("SensorNode")> like INetworkNode {
        @display("p=106.59,30.35");
    }

    host_lpn_309: <default("SensorNode")> like INetworkNode {
        @display("p=71.49,23.35");
    }

    host_lpn_310: <default("SensorNode")> like INetworkNode {
        @display("p=25.16,90.13");
    }

    host_lpn_311: <default("SensorNode")> like INetworkNode {
        @display("p=32.70,7.09");
    }

    host_lpn_312: <default("SensorNode")> like INetworkNode {
        @display("p=125.44,44.51");
    }

    host_lpn_313: <default("SensorNode")> like INetworkNode {
        @display("p=42.43,2.60");
    }

    host_lpn_314: <default("SensorNode")> like INetworkNode {
        @display("p=67.92,117.28");
    }

    host_lpn_315: <default("SensorNode")> like INetworkNode {
        @display("p=19.27,239.00");
    }

    host_lpn_316: <default("SensorNode")> like INetworkNode {
        @display("p=70.01,178.70");
    }

    host_lpn_317: <default("SensorNode")> like INetworkNode {
        @display("p=30.07,233.07");
    }

    host_lpn_318: <default("SensorNode")> like INetworkNode {
        @display("p=60.19,282.39");
    }

    host_lpn_319: <default("SensorNode")> like INetworkNode {
        @display("p=8.54,276.46");
    }

    host_lpn_320: <default("SensorNode")> like INetworkNode {
        @display("p=195.30,319.85");
    }

    host_lpn_321: <default("SensorNode")> like INetworkNode {
        @display("p=121.26,282.10");
    }

    host_lpn_322: <default("SensorNode")> like INetworkNode {
        @display("p=209.45,257.45");
    }

    host_lpn_323: <default("SensorNode")> like INetworkNode {
        @display("p=48.48,205.93");
    }

    host_lpn_324: <default("SensorNode")> like INetworkNode {
        @display("p=190.12,189.62");
    }

    host_lpn_325: <default("SensorNode")> like INetworkNode {
        @display("p=122.56,240.71");
    }

    host_lpn_326: <default("SensorNode")> like INetworkNode {
        @display("p=140.88,276.99");
    }

    host_lpn_327: <default("SensorNode")> like INetworkNode {
        @display("p=166.39,257.27");
    }

    host_lpn_328: <default("SensorNode")> like INetworkNode {
        @display("p=150.66,337.06");
    }

    host_lpn_329: <default("SensorNode")> like INetworkNode {
        @display("p=191.62,268.82");
    }

    host_lpn_330: <default("SensorNode")> like INetworkNode {
        @display("p=160.47,272.01");
    }

    host_lpn_331: <default("SensorNode")> like INetworkNode {
        @display("p=108.68,366.38");
    }

    host_lpn_332: <default("SensorNode")> like INetworkNode {
        @display("p=11.16,394.87");
    }

    host_lpn_333: <default("SensorNode")> like INetworkNode {
        @display("p=4.26,346.94");
    }

    host_lpn_334: <default("SensorNode")> like INetworkNode {
        @display("p=82.21,315.96");
    }

    host_lpn_335: <default("SensorNode")> like INetworkNode {
        @display("p=113.26,390.35");
    }

    host_lpn_336: <default("SensorNode")> like INetworkNode {
        @display("p=95.92,273.33");
    }

    host_lpn_337: <default("SensorNode")> like INetworkNode {
        @display("p=81.48,335.53");
    }

    host_lpn_338: <default("SensorNode")> like INetworkNode {
        @display("p=89.92,378.45");
    }

    host_lpn_339: <default("SensorNode")> like INetworkNode {
        @display("p=131.52,254.54");
    }

    host_lpn_340: <default("SensorNode")> like INetworkNode {
        @display("p=124.00,337.55");
    }

    host_lpn_341: <default("SensorNode")> like INetworkNode {
        @display("p=57.34,365.87");
    }

    host_lpn_342: <default("SensorNode")> like INetworkNode {
        @display("p=57.55,376.37");
    }

    host_lpn_343: <default("SensorNode")> like INetworkNode {
        @display("p=126.97,305.34");
    }

    host_lpn_344: <default("SensorNode")> like INetworkNode {
        @display("p=6.91,305.28");
    }

    host_lpn_345: <default("SensorNode")> like INetworkNode {
        @display("p=38.76,307.57");
    }

    host_lpn_346: <default("SensorNode")> like INetworkNode {
        @display("p=29.42,316.83");
    }

    host_lpn_347: <default("SensorNode")> like INetworkNode {
        @display("p=147.61,252.10");
    }

    host_lpn_348: <default("SensorNode")> like INetworkNode {
        @display("p=57.01,237.78");
    }

    host_lpn_349: <default("SensorNode")> like INetworkNode {
        @display("p=128.09,394.50");
    }

    host_lpn_350: <default("SensorNode")> like INetworkNode {
        @display("p=262.47,375.24");
    }

    host_lpn_351: <default("SensorNode")> like INetworkNode {
        @display("p=304.10,361.13");
    }

    host_lpn_352: <default("SensorNode")> like INetworkNode {
        @display("p=290.12,310.87");
    }

    host_lpn_353: <default("SensorNode")> like INetworkNode {
        @display("p=336.87,269.75");
    }

    host_lpn_354: <default("SensorNode")> like INetworkNode {
        @display("p=272.94,281.15");
    }

    host_lpn_355: <default("SensorNode")> like INetworkNode {
        @display("p=279.72,354.99");
    }

    host_lpn_356: <default("SensorNode")> like INetworkNode {
        @display("p=290.08,341.58");
    }

    host_lpn_357: <default("SensorNode")> like INetworkNode {
        @display("p=142.36,289.13");
    }

    host_lpn_358: <default("SensorNode")> like INetworkNode {
        @display("p=277.84,328.86");
    }

    host_lpn_359: <default("SensorNode")> like INetworkNode {
        @display("p=223.24,311.17");
    }

    host_lpn_360: <default("SensorNode")> like INetworkNode {
        @display("p=206.11,320.21");
    }

    host_lpn_361: <default("SensorNode")> like INetworkNode {
        @display("p=247.40,353.22");
    }

    host_lpn_362: <default("SensorNode")> like INetworkNode {
        @display("p=231.76,334.07");
    }

    host_lpn_363: <default("SensorNode")> like INetworkNode {
        @display("p=272.34,377.64");
    }

    host_lpn_364: <default("SensorNode")> like INetworkNode {
        @display("p=209.90,233.18");
    }

    host_lpn_365: <default("SensorNode")> like INetworkNode {
        @display("p=221.36,181.25");
    }

    host_lpn_366: <default("SensorNode")> like INetworkNode {
        @display("p=320.83,310.15");
    }

    host_lpn_367: <default("SensorNode")> like INetworkNode {
        @display("p=258.47,233.29");
    }

    host_lpn_368: <default("SensorNode")> like INetworkNode {
        @display("p=108.28,252.70");
    }

    host_lpn_369: <default("SensorNode")> like INetworkNode {
        @display("p=248.66,221.70");
    }

    host_lpn_370: <default("SensorNode")> like INetworkNode {
        @display("p=227.35,291.06");
    }

    host_lpn_371: <default("SensorNode")> like INetworkNode {
        @display("p=254.23,343.84");
    }

    host_lpn_372: <default("SensorNode")> like INetworkNode {
        @display("p=293.99,391.61");
    }

    host_lpn_373: <default("SensorNode")> like INetworkNode {
        @display("p=273.11,258.60");
    }

    host_lpn_374: <default("SensorNode")> like INetworkNode {
        @display("p=301.64,326.46");
    }

    host_lpn_375: <default("SensorNode")> like INetworkNode {
        @display("p=315.66,396.45");
    }

    host_lpn_376: <default("SensorNode")> like INetworkNode {
        @display("p=375.04,100.69");
    }

    host_lpn_377: <default("SensorNode")> like INetworkNode {
        @display("p=262.43,129.25");
    }

    host_lpn_378: <default("SensorNode")> like INetworkNode {
        @display("p=311.66,61.62");
    }

    host_lpn_379: <default("SensorNode")> like INetworkNode {
        @display("p=335.40,2.37");
    }

    host_lpn_380: <default("SensorNode")> like INetworkNode {
        @display("p=396.62,1.78");
    }

    host_lpn_381: <default("SensorNode")> like INetworkNode {
        @display("p=370.82,28.09");
    }

    host_lpn_382: <default("SensorNode")> like INetworkNode {
        @display("p=372.12,116.85");
    }

    host_lpn_383: <default("SensorNode")> like INetworkNode {
        @display("p=339.23,46.90");
    }

    host_lpn_384: <default("SensorNode")> like INetworkNode {
        @display("p=399.79,32.68");
    }

    host_lpn_385: <default("SensorNode")> like INetworkNode {
        @display("p=339.36,35.10");
    }

    host_lpn_386: <default("SensorNode")> like INetworkNode {
        @display("p=291.30,23.07");
    }

    host_lpn_387: <default("SensorNode")> like INetworkNode {
        @display("p=211.22,15.00");
    }

    host_lpn_388: <default("SensorNode")> like INetworkNode {
        @display("p=320.06,68.79");
    }

    host_lpn_389: <default("SensorNode")> like INetworkNode {
        @display("p=137.76,5.84");
    }

    host_lpn_390: <default("SensorNode")> like INetworkNode {
        @display("p=144.79,92.60");
    }

    host_lpn_391: <default("SensorNode")> like INetworkNode {
        @display("p=109.08,105.89");
    }

    host_lpn_392: <default("SensorNode")> like INetworkNode {
        @display("p=178.18,59.11");
    }

    host_lpn_393: <default("SensorNode")> like INetworkNode {
        @display("p=121.10,18.75");
    }

    host_lpn_394: <default("SensorNode")> like INetworkNode {
        @display("p=100.17,133.79");
    }

    host_lpn_395: <default("SensorNode")> like INetworkNode {
        @display("p=18.65,118.96");
    }

    host_lpn_396: <default("SensorNode")> like INetworkNode {
        @display("p=50.79,108.21");
    }

    host_lpn_397: <default("SensorNode")> like INetworkNode {
        @display("p=186.26,176.59");
    }

    host_lpn_398: <default("SensorNode")> like INetworkNode {
        @display("p=218.88,117.92");
    }

    host_lpn_399: <default("SensorNode")> like INetworkNode {
        @display("p=106.76,210.80");
    }

    host_lpn_400: <default("SensorNode")> like INetworkNode {
        @display("p=200.34,192.15");
    }

    host_lpn_401: <default("SensorNode")> like INetworkNode {
        @display("p=112.30,192.17");
    }

    host_lpn_402: <default("SensorNode")> like INetworkNode {
        @display("p=76.62,245.80");
    }

    host_lpn_403: <default("SensorNode")> like INetworkNode {
        @display("p=152.65,237.06");
    }

    host_lpn_404: <default("SensorNode")> like INetworkNode {
        @display("p=89.80,202.73");
    }

    host_lpn_405: <default("SensorNode")> like INetworkNode {
        @display("p=57.80,249.55");
    }

    host_lpn_406: <default("SensorNode")> like INetworkNode {
        @display("p=37.32,217.29");
    }

    host_lpn_407: <default("SensorNode")> like INetworkNode {
        @display("p=132.07,188.61");
    }

    host_lpn_408: <default("SensorNode")> like INetworkNode {
        @display("p=131.04,58.03");
    }

    host_lpn_409: <default("SensorNode")> like INetworkNode {
        @display("p=91.52,160.78");
    }

    host_lpn_410: <default("SensorNode")> like INetworkNode {
        @display("p=98.05,103.05");
    }

    host_lpn_411: <default("SensorNode")> like INetworkNode {
        @display("p=33.45,262.83");
    }

    host_lpn_412: <default("SensorNode")> like INetworkNode {
        @display("p=24.01,106.57");
    }

    host_lpn_413: <default("SensorNode")> like INetworkNode {
        @display("p=102.62,86.08");
    }

    host_lpn_414: <default("SensorNode")> like INetworkNode {
        @display("p=129.56,12.87");
    }

    host_lpn_415: <default("SensorNode")> like INetworkNode {
        @display("p=248.24,68.28");
    }

    host_lpn_416: <default("SensorNode")> like INetworkNode {
        @display("p=226.48,101.93");
    }

    host_lpn_417: <default("SensorNode")> like INetworkNode {
        @display("p=218.16,40.40");
    }

    host_lpn_418: <default("SensorNode")> like INetworkNode {
        @display("p=197.70,145.35");
    }

    host_lpn_419: <default("SensorNode")> like INetworkNode {
        @display("p=232.98,62.78");
    }

    host_lpn_420: <default("SensorNode")> like INetworkNode {
        @display("p=132.89,37.63");
    }

    host_lpn_421: <default("SensorNode")> like INetworkNode {
        @display("p=238.86,24.32");
    }

    host_lpn_422: <default("SensorNode")> like INetworkNode {
        @display("p=95.81,40.55");
    }

    host_lpn_423: <default("SensorNode")> like INetworkNode {
        @display("p=131.04,84.94");
    }

    host_lpn_424: <default("SensorNode")> like INetworkNode {
        @display("p=64.94,83.54");
    }

    host_lpn_425: <default("SensorNode")> like INetworkNode {
        @display("p=45.11,126.09");
    }

    host_lpn_426: <default("SensorNode")> like INetworkNode {
        @display("p=76.32,34.25");
    }

    host_lpn_427: <default("SensorNode")> like INetworkNode {
        @display("p=47.16,38.71");
    }

    host_lpn_428: <default("SensorNode")> like INetworkNode {
        @display("p=6.37,142.74");
    }

    host_lpn_429: <default("SensorNode")> like INetworkNode {
        @display("p=104.86,149.60");
    }

    host_lpn_430: <default("SensorNode")> like INetworkNode {
        @display("p=136.29,150.52");
    }

    host_lpn_431: <default("SensorNode")> like INetworkNode {
        @display("p=62.35,108.59");
    }

    host_lpn_432: <default("SensorNode")> like INetworkNode {
        @display("p=29.86,129.60");
    }

    host_lpn_433: <default("SensorNode")> like INetworkNode {
        @display("p=128.31,2.27");
    }

    host_lpn_434: <default("SensorNode")> like INetworkNode {
        @display("p=105.16,0.01");
    }

    host_lpn_435: <default("SensorNode")> like INetworkNode {
        @display("p=61.99,57.69");
    }

    host_lpn_436: <default("SensorNode")> like INetworkNode {
        @display("p=0.17,21.52");
    }

    host_lpn_437: <default("SensorNode")> like INetworkNode {
        @display("p=35.25,36.46");
    }

    host_lpn_438: <default("SensorNode")> like INetworkNode {
        @display("p=16.01,55.62");
    }

    host_lpn_439: <default("SensorNode")> like INetworkNode {
        @display("p=64.42,156.55");
    }

    host_lpn_440: <default("SensorNode")> like INetworkNode {
        @display("p=14.64,209.84");
    }

    host_lpn_441: <default("SensorNode")> like INetworkNode {
        @display("p=10.92,193.49");
    }

    host_lpn_442: <default("SensorNode")> like INetworkNode {
        @display("p=7.16,237.08");
    }

    host_lpn_443: <default("SensorNode")> like INetworkNode {
        @display("p=37.90,363.99");
    }

    host_lpn_444: <default("SensorNode")> like INetworkNode {
        @display("p=42.88,235.95");
    }

    host_lpn_445: <default("SensorNode")> like INetworkNode {
        @display("p=178.13,183.59");
    }

    host_lpn_446: <default("SensorNode")> like INetworkNode {
        @display("p=40.47,285.31");
    }

    host_lpn_447: <default("SensorNode")> like INetworkNode {
        @display("p=146.89,387.08");
    }

    host_lpn_448: <default("SensorNode")> like INetworkNode {
        @display("p=48.35,217.60");
    }

    host_lpn_449: <default("SensorNode")> like INetworkNode {
        @display("p=192.05,165.69");
    }

    host_lpn_450: <default("SensorNode")> like INetworkNode {
        @display("p=170.24,285.05");
    }

    host_lpn_451: <default("SensorNode")> like INetworkNode {
        @display("p=110.85,287.14");
    }

    host_lpn_452: <default("SensorNode")> like INetworkNode {
        @display("p=178.53,312.24");
    }

    host_lpn_453: <default("SensorNode")> like INetworkNode {
        @display("p=212.15,372.99");
    }

    host_lpn_454: <default("SensorNode")> like INetworkNode {
        @display("p=217.94,195.72");
    }

    host_lpn_455: <default("SensorNode")> like INetworkNode {
        @display("p=84.99,367.10");
    }

    host_lpn_456: <default("SensorNode")> like INetworkNode {
        @display("p=139.05,374.99");
    }

    host_lpn_457: <default("SensorNode")> like INetworkNode {
        @display("p=9.04,374.03");
    }

    host_lpn_458: <default("SensorNode")> like INetworkNode {
        @display("p=16.09,340.06");
    }

    host_lpn_459: <default("SensorNode")> like INetworkNode {
        @display("p=10.75,326.48");
    }

    host_lpn_460: <default("SensorNode")> like INetworkNode {
        @display("p=27.98,335.74");
    }

    host_lpn_461: <default("SensorNode")> like INetworkNode {
        @display("p=63.90,328.95");
    }

    host_lpn_462: <default("SensorNode")> like INetworkNode {
        @display("p=168.64,397.62");
    }

    host_lpn_463: <default("SensorNode")> like INetworkNode {
        @display("p=45.03,276.23");
    }

    host_lpn_464: <default("SensorNode")> like INetworkNode {
        @display("p=188.81,237.11");
    }

    host_lpn_465: <default("SensorNode")> like INetworkNode {
        @display("p=176.10,388.32");
    }

    host_lpn_466: <default("SensorNode")> like INetworkNode {
        @display("p=63.49,348.99");
    }

    host_lpn_467: <default("SensorNode")> like INetworkNode {
        @display("p=85.15,397.83");
    }

    host_lpn_468: <default("SensorNode")> like INetworkNode {
        @display("p=192.03,254.88");
    }

    host_lpn_469: <default("SensorNode")> like INetworkNode {
        @display("p=47.08,344.09");
    }

    host_lpn_470: <default("SensorNode")> like INetworkNode {
        @display("p=52.68,303.74");
    }

    host_lpn_471: <default("SensorNode")> like INetworkNode {
        @display("p=2.64,268.16");
    }

    host_lpn_472: <default("SensorNode")> like INetworkNode {
        @display("p=80.35,224.02");
    }

    host_lpn_473: <default("SensorNode")> like INetworkNode {
        @display("p=93.50,311.19");
    }

    host_lpn_474: <default("SensorNode")> like INetworkNode {
        @display("p=197.06,399.29");
    }

    host_lpn_475: <default("SensorNode")> like INetworkNode {
        @display("p=228.76,387.49");
    }

    host_lpn_476: <default("SensorNode")> like INetworkNode {
        @display("p=338.77,343.06");
    }

    host_lpn_477: <default("SensorNode")> like INetworkNode {
        @display("p=360.48,229.93");
    }

    host_lpn_478: <default("SensorNode")> like INetworkNode {
        @display("p=334.42,229.62");
    }

    host_lpn_479: <default("SensorNode")> like INetworkNode {
        @display("p=274.85,211.20");
    }

    host_lpn_480: <default("SensorNode")> like INetworkNode {
        @display("p=267.03,350.62");
    }

    host_lpn_481: <default("SensorNode")> like INetworkNode {
        @display("p=194.02,287.10");
    }

    host_lpn_482: <default("SensorNode")> like INetworkNode {
        @display("p=260.31,269.46");
    }

    host_lpn_483: <default("SensorNode")> like INetworkNode {
        @display("p=161.81,365.10");
    }

    host_lpn_484: <default("SensorNode")> like INetworkNode {
        @display("p=220.20,338.79");
    }

    host_lpn_485: <default("SensorNode")> like INetworkNode {
        @display("p=206.50,394.97");
    }

    host_lpn_486: <default("SensorNode")> like INetworkNode {
        @display("p=115.18,324.48");
    }

    host_lpn_487: <default("SensorNode")> like INetworkNode {
        @display("p=228.82,322.42");
    }

    host_lpn_488: <default("SensorNode")> like INetworkNode {
        @display("p=295.58,376.79");
    }

    host_lpn_489: <default("SensorNode")> like INetworkNode {
        @display("p=234.72,270.37");
    }

    host_lpn_490: <default("SensorNode")> like INetworkNode {
        @display("p=296.20,272.76");
    }

    host_lpn_491: <default("SensorNode")> like INetworkNode {
        @display("p=321.16,220.38");
    }

    host_lpn_492: <default("SensorNode")> like INetworkNode {
        @display("p=314.75,278.23");
    }

    host_lpn_493: <default("SensorNode")> like INetworkNode {
        @display("p=197.49,246.23");
    }

    host_lpn_494: <default("SensorNode")> like INetworkNode {
        @display("p=225.93,213.17");
    }

    host_lpn_495: <default("SensorNode")> like INetworkNode {
        @display("p=276.58,296.85");
    }

    host_lpn_496: <default("SensorNode")> like INetworkNode {
        @display("p=196.50,297.73");
    }

    host_lpn_497: <default("SensorNode")> like INetworkNode {
        @display("p=310.58,376.39");
    }

    host_lpn_498: <default("SensorNode")> like INetworkNode {
        @display("p=275.64,224.08");
    }

    host_lpn_499: <default("SensorNode")> like INetworkNode {
        @display("p=249.01,364.21");
    }

    host_lpn_500: <default("SensorNode")> like INetworkNode {
        @display("p=264.51,336.73");
    }

}

