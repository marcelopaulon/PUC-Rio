
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn4-4
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
        @display("p=12.00,151.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=61.45,209.04");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=51.99,231.12");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=72.58,138.57");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=110.03,47.83");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=178.65,102.44");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=190.19,82.07");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=213.23,20.46");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=202.72,81.80");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=145.93,113.38");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=144.26,90.44");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=228.42,119.11");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=216.22,82.81");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=225.39,174.40");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=182.41,229.96");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=175.18,255.46");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=230.38,287.24");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=279.06,338.44");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=260.45,258.97");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=304.16,257.07");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=226.74,197.09");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=318.91,216.43");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=258.79,136.84");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=241.73,86.74");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=245.05,139.53");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=170.83,134.83");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=182.84,49.42");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=198.59,120.50");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=226.93,142.83");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=147.33,136.55");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=228.17,108.45");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=243.42,73.19");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=255.45,79.08");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=185.09,72.14");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=210.18,65.13");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=188.17,58.75");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=241.07,0.89");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=188.30,117.69");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=261.77,152.66");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=216.66,203.16");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=155.14,240.78");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=126.70,267.40");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=165.99,293.38");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=162.46,276.46");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=199.82,291.42");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=299.18,218.17");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=338.27,226.23");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=327.76,235.00");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=340.56,197.89");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=340.32,275.47");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=31.55,187.38");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=70.30,291.29");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=62.14,242.44");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=83.06,160.10");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=60.66,89.95");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=215.10,171.38");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=267.10,99.08");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=187.52,92.59");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=123.30,59.48");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=61.73,132.79");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=142.24,71.82");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=130.48,117.10");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=230.11,98.63");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=288.60,151.59");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=147.83,212.52");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=248.16,299.20");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=210.02,325.73");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=262.48,405.99");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=186.70,206.61");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=302.53,271.49");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=259.63,219.02");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=316.31,258.84");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=269.36,143.49");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=228.78,88.10");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=236.50,151.30");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=203.78,109.49");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=232.65,21.10");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=130.00,78.14");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=191.03,223.44");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=156.97,139.95");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=201.68,143.16");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=293.72,135.04");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=253.76,124.74");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=174.67,156.29");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=179.11,125.65");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=163.30,61.27");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=322.60,12.77");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=109.75,130.08");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=267.97,166.13");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=189.26,163.05");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=173.29,310.88");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=198.71,311.64");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=119.27,275.68");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=85.31,221.29");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=165.55,362.84");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=308.74,213.81");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=266.76,240.79");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=310.25,202.28");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=401.90,149.24");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=372.59,263.00");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=12.55,236.70");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=41.20,122.23");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=114.24,239.17");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=158.06,122.20");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=200.46,48.34");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=132.83,176.56");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=177.65,85.55");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=229.00,61.95");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=152.49,26.09");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=124.03,101.52");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=121.62,85.18");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=281.95,180.69");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=161.31,83.66");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=247.02,237.97");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=152.01,275.89");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=142.47,263.74");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=220.34,321.38");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=241.59,369.12");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=246.26,249.51");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=399.05,264.26");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=272.84,175.56");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=329.85,129.66");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=262.53,188.82");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=322.79,89.92");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=206.71,132.90");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=202.38,94.15");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=89.21,25.18");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=132.22,162.59");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=201.47,213.80");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=140.46,144.52");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=308.95,128.31");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=182.35,32.24");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=276.03,156.87");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=223.00,72.42");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=135.12,19.46");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=223.33,50.45");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=258.86,16.62");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=190.97,137.10");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=345.64,100.92");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=158.46,162.93");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=183.14,247.90");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=79.59,212.81");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=84.41,315.86");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=233.66,208.79");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=131.58,249.10");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=272.54,263.68");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=369.00,150.75");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=280.49,237.10");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=409.49,217.62");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=349.70,307.74");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=1.35,83.84");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=100.54,293.55");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=72.04,199.12");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=125.08,139.51");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=115.42,73.83");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=151.98,52.65");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=219.70,98.39");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=191.68,27.88");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=139.45,57.88");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=214.44,43.32");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=144.83,34.99");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=163.39,184.72");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=214.65,110.92");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=154.75,190.20");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=229.08,227.06");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=165.27,318.17");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=260.50,322.19");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=281.15,408.57");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=324.57,247.15");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=296.23,346.90");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=300.65,153.61");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=380.15,194.10");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=258.46,170.10");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=317.19,44.73");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=244.97,159.68");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=180.00,145.62");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=159.86,36.81");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=203.78,158.88");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=280.99,191.03");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=162.51,104.22");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=237.92,49.29");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=291.97,48.93");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=224.05,26.45");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=170.60,2.59");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=198.36,69.93");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=242.92,39.91");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=280.36,83.06");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=118.57,186.50");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=294.15,106.99");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=214.73,191.79");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=73.90,221.51");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=45.43,289.84");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=217.10,359.97");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=139.04,218.93");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=169.19,237.66");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=299.35,233.77");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=309.99,146.45");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=329.69,211.64");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=309.62,225.41");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=259.03,281.93");
    }

}

