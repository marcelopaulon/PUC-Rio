
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn12-2
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
        @display("p=174.00,5.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=215.72,11.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=194.97,37.28");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=212.74,24.22");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=194.48,23.32");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=222.63,67.83");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=205.89,42.29");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=225.22,40.35");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=253.97,34.79");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=285.92,12.27");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=285.31,23.52");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=264.49,92.24");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=342.54,133.15");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=383.80,109.31");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=354.36,165.31");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=360.73,233.05");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=351.56,226.24");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=193.02,84.32");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=231.39,50.66");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=172.52,21.91");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=139.15,58.28");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=121.89,88.78");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=239.80,23.10");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=240.39,57.45");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=157.13,22.13");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=275.93,32.16");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=248.88,16.60");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=316.12,26.79");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=231.70,100.11");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=343.47,150.90");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=350.87,101.82");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=333.97,143.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=396.52,261.28");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=301.05,160.68");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=117.16,67.80");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=280.35,0.34");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=101.27,41.94");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=196.37,49.34");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=206.34,1.00");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=149.77,40.07");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=148.48,12.44");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=301.36,41.99");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=239.37,37.35");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=359.91,44.73");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=299.59,30.54");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=294.20,58.12");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=250.49,95.48");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=389.73,117.42");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=362.17,131.57");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=359.26,267.61");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=371.16,239.20");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=217.42,77.99");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=184.26,28.51");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=130.64,20.47");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=214.39,100.49");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=138.36,34.16");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=166.12,80.90");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=158.85,48.76");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=229.12,21.44");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=266.25,47.97");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=281.78,77.08");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=354.91,57.94");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=336.05,85.84");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=325.57,106.75");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=350.59,38.85");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=388.71,80.60");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=282.22,253.35");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=326.69,212.52");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=183.27,0.60");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=212.24,90.69");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=213.21,57.16");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=277.93,87.66");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=166.88,31.09");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=254.67,106.21");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=245.94,5.02");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=246.04,75.80");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=333.60,28.41");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=262.14,74.78");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=334.99,48.23");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=272.86,103.30");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=346.38,123.51");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=396.31,46.86");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=295.42,224.59");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=299.57,179.57");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=386.25,216.99");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=127.43,48.48");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=263.23,10.56");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=188.06,104.72");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=194.67,63.01");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=187.63,120.69");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=180.83,72.12");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=158.69,70.45");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=248.05,50.26");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=248.44,115.06");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=293.94,5.39");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=342.32,9.49");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=286.43,97.69");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=296.39,197.21");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=398.54,97.53");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=277.32,150.28");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=359.06,143.84");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=339.97,184.15");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=169.14,61.85");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=129.29,61.51");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=108.06,14.03");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=294.97,77.75");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=176.49,83.48");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=239.75,84.98");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=216.90,0.89");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=238.27,12.72");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=201.99,96.53");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=357.23,1.97");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=320.16,70.40");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=360.41,86.33");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=283.32,120.14");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=366.84,111.24");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=286.17,196.05");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=349.44,206.13");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=341.17,230.11");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=142.00,21.52");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=280.67,57.31");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=171.55,106.59");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=209.60,119.70");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=202.26,78.79");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=215.90,133.94");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=178.61,50.35");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=255.94,64.23");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=313.44,53.24");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=273.99,11.44");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=367.85,55.61");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=245.95,146.04");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=287.80,163.77");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=379.42,98.30");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=365.27,156.38");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=399.08,203.71");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=370.63,251.20");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=230.66,3.41");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=155.07,4.63");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=201.28,109.20");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=123.38,28.78");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=167.83,43.28");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=300.78,101.08");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=215.42,35.87");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=183.56,11.86");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=274.56,70.02");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=333.75,15.33");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=284.45,66.98");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=234.28,76.05");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=325.73,135.20");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=395.95,174.32");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=385.87,233.91");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=367.84,209.06");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=366.65,296.00");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=85.00,38.12");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=310.70,11.49");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=158.08,59.02");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=117.65,1.57");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=192.90,3.72");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=175.91,132.51");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=285.80,40.80");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=218.89,48.83");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=323.89,9.38");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=374.84,29.17");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=268.54,20.83");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=273.52,127.58");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=323.18,231.19");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=394.35,131.59");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=371.78,171.82");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=350.17,285.38");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=292.58,306.02");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=112.02,41.26");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=144.04,68.20");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=108.29,77.73");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=179.78,37.93");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=101.82,29.98");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=161.00,143.29");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=152.64,82.80");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=198.07,12.48");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=313.35,38.26");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=341.00,57.08");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=342.50,77.49");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=264.48,179.39");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=378.60,129.71");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=334.61,67.40");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=284.64,140.17");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=310.74,219.67");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=386.18,202.09");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=116.52,57.49");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=209.41,68.48");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=256.08,86.00");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=237.22,116.88");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=225.40,110.21");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=261.13,150.97");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=197.89,122.45");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=266.90,0.37");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=260.54,130.38");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=347.10,22.77");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=258.90,116.34");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=320.10,164.27");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=297.08,147.68");
    }

}

