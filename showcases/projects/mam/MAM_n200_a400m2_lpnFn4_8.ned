
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_8
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
        @display("p=42.59,235.78");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=18.22,211.27");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=6.99,231.52");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=34.05,251.52");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=60.36,297.51");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=128.07,227.32");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=101.16,218.64");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=151.69,204.99");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=161.42,173.72");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=172.88,157.78");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=166.55,217.76");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=122.18,179.92");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=136.16,121.17");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=228.67,149.01");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=324.83,129.12");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=300.33,106.93");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=313.49,201.53");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=333.39,157.07");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=393.53,126.70");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=364.09,108.49");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=348.42,162.15");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=317.82,164.87");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=355.37,143.17");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=344.37,96.49");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=300.48,91.65");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=289.55,57.57");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=292.40,148.96");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=245.36,65.61");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=247.84,101.00");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=269.66,21.64");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=267.25,8.36");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=244.45,8.78");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=174.36,53.58");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=192.99,50.22");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=188.36,63.14");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=197.34,69.11");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=215.61,146.39");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=278.94,99.83");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=284.39,41.21");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=207.12,26.71");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=120.66,40.77");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=150.07,0.86");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=125.22,28.52");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=164.75,69.55");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=70.47,74.47");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=75.58,40.78");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=100.38,24.52");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=115.88,147.28");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=33.70,174.81");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=128.97,293.44");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=75.03,156.90");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=57.35,180.17");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=25.66,229.14");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=64.04,226.36");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=34.70,381.15");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=144.35,259.48");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=171.56,242.14");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=149.23,217.00");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=194.33,141.06");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=151.37,177.03");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=140.89,206.47");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=72.38,192.86");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=108.37,43.07");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=228.96,136.86");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=288.85,177.27");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=273.08,131.69");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=383.72,135.93");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=375.45,112.66");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=359.09,215.49");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=370.75,79.31");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=333.01,176.07");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=344.07,243.07");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=371.41,151.14");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=352.11,12.12");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=303.68,125.21");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=296.17,81.25");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=319.64,149.33");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=306.04,18.13");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=219.68,64.98");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=276.24,88.86");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=297.64,8.19");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=225.00,10.12");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=146.60,96.18");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=141.49,53.35");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=113.47,87.18");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=221.90,51.58");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=261.63,170.36");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=283.82,186.02");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=236.46,100.20");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=205.63,89.55");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=86.69,6.89");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=135.94,12.37");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=122.96,1.95");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=134.25,78.38");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=3.90,19.57");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=51.37,25.85");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=101.22,102.75");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=72.16,129.63");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=112.48,131.06");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=108.71,363.40");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=30.73,239.38");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=101.21,164.58");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=36.65,157.13");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=28.14,296.36");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=10.36,304.99");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=178.87,235.07");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=92.00,197.74");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=120.65,193.29");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=117.29,227.83");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=107.71,117.49");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=250.61,230.17");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=158.44,107.40");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=179.19,110.21");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=298.13,165.38");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=327.03,104.30");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=231.29,75.89");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=293.72,191.07");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=353.27,181.94");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=360.50,83.79");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=282.49,121.00");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=333.83,136.08");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=330.46,77.50");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=347.75,59.09");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=324.13,185.62");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=302.96,70.70");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=248.34,33.97");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=276.06,63.28");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=203.25,146.02");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=241.44,87.48");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=319.42,32.39");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=252.98,2.38");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=253.71,16.00");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=179.43,28.54");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=202.37,54.73");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=164.11,150.09");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=155.12,119.17");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=210.85,173.42");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=340.13,167.88");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=339.24,112.21");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=197.02,13.40");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=80.34,21.11");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=223.45,27.95");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=45.26,80.70");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=151.05,128.42");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=96.06,41.67");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=36.80,121.59");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=97.66,7.27");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=169.42,195.76");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=29.96,214.67");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=117.73,329.14");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=15.56,239.97");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=14.10,155.91");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=29.49,184.31");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=22.56,258.54");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=32.22,283.68");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=189.28,233.25");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=149.32,156.43");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=198.34,175.26");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=138.28,131.35");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=121.73,157.81");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=126.41,276.51");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=50.85,163.37");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=174.12,124.78");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=273.54,169.68");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=256.45,131.72");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=324.01,21.02");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=375.50,272.67");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=334.21,211.03");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=334.46,66.57");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=359.38,31.24");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=265.22,125.27");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=345.94,138.84");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=386.74,97.03");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=318.85,42.51");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=316.54,4.59");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=325.19,59.98");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=239.64,149.27");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=208.94,78.20");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=257.71,73.78");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=337.62,6.47");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=209.22,16.43");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=293.41,35.14");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=114.41,24.87");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=182.69,45.43");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=240.81,112.38");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=186.50,94.44");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=266.61,113.84");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=307.04,192.11");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=241.56,49.57");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=146.71,64.35");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=50.52,41.80");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=163.71,16.11");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=90.20,82.99");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=212.81,57.48");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=71.49,11.60");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=9.92,67.19");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=19.58,61.47");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=116.41,97.36");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=66.90,242.68");
    }

}

