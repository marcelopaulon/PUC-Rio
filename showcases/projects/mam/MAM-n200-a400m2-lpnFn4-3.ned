
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn4-3
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
        @display("p=2.00,22.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=76.38,52.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=59.95,46.12");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=48.10,55.48");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=140.70,30.44");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=154.85,29.64");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=246.48,61.57");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=233.29,113.32");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=221.45,108.08");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=281.00,120.42");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=308.80,123.46");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=337.35,137.29");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=299.28,165.31");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=252.12,198.89");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=263.86,215.22");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=313.59,291.04");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=351.61,231.60");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=348.20,295.37");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=362.53,260.51");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=393.86,259.52");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=346.21,313.73");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=364.56,369.00");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=285.83,332.85");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=279.04,353.76");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=260.68,257.17");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=353.99,280.78");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=322.57,312.92");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=254.87,337.24");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=309.62,340.81");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=333.09,270.89");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=253.04,292.88");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=183.29,305.30");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=177.89,322.26");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=144.40,287.71");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=199.81,227.42");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=104.04,220.54");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=156.20,178.81");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=99.20,195.75");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=95.98,267.37");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=126.73,270.97");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=98.51,323.71");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=105.01,234.47");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=99.94,288.66");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=41.01,229.31");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=30.34,223.90");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=77.29,262.09");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=80.01,329.99");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=8.63,312.41");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=27.63,341.96");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=29.57,379.85");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=9.52,76.66");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=115.25,66.73");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=59.82,131.90");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=12.78,103.68");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=79.25,65.53");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=159.45,10.52");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=259.21,142.27");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=216.31,62.24");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=134.11,152.19");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=308.79,136.39");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=294.97,130.72");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=253.17,113.14");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=315.43,212.87");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=288.38,192.12");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=287.35,220.42");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=322.72,285.36");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=394.46,172.21");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=383.24,251.08");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=385.68,293.13");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=351.15,247.99");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=388.59,235.53");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=362.35,346.96");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=240.15,381.80");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=292.30,368.82");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=204.94,296.55");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=369.24,289.61");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=273.54,300.93");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=240.36,259.28");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=280.91,343.09");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=301.81,298.43");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=289.01,280.78");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=196.65,303.85");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=180.20,365.09");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=133.97,292.37");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=147.20,212.70");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=97.03,212.03");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=175.09,194.84");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=29.94,166.26");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=36.24,255.20");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=164.19,296.95");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=158.09,347.98");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=131.32,243.89");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=139.61,318.74");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=87.65,218.95");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=120.14,249.22");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=59.37,205.83");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=167.41,358.88");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=57.29,336.34");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=34.60,333.27");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=63.19,346.22");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=21.72,75.16");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=134.62,117.93");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=69.60,40.17");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=68.67,6.26");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=186.44,64.32");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=157.51,113.58");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=275.54,15.85");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=198.94,199.79");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=165.81,190.95");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=315.58,80.19");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=222.52,139.13");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=351.99,204.22");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=237.10,238.87");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=289.90,179.42");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=238.94,205.52");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=333.58,231.84");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=357.73,221.27");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=347.33,268.54");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=363.96,235.39");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=394.62,340.97");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=380.97,318.31");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=351.84,353.18");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=298.88,384.39");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=338.01,300.45");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=262.65,278.91");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=336.97,364.69");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=269.72,396.24");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=291.24,298.71");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=284.68,390.50");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=327.53,223.88");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=244.70,302.96");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=243.96,332.42");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=156.61,322.74");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=149.08,302.87");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=153.10,247.13");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=132.30,225.08");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=231.55,132.41");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=88.78,175.40");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=61.26,255.85");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=67.34,281.45");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=108.63,334.01");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=114.02,260.75");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=28.55,297.95");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=92.16,233.61");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=106.06,182.15");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=80.86,272.29");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=79.30,310.27");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=76.40,300.49");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=6.60,256.44");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=55.59,393.93");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=6.04,7.39");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=82.75,87.63");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=56.57,14.55");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=93.50,74.76");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=109.41,40.54");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=112.01,108.92");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=220.41,88.24");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=205.45,82.10");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=209.25,143.34");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=253.36,128.52");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=323.81,176.77");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=340.60,198.22");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=282.25,203.71");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=223.28,264.90");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=253.88,187.75");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=287.95,266.94");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=347.11,156.38");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=388.42,209.75");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=339.09,333.20");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=398.56,223.05");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=286.19,309.63");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=308.88,357.20");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=365.20,312.67");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=257.96,367.81");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=226.44,276.42");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=316.37,303.76");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=337.44,381.93");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=218.84,250.70");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=308.84,397.37");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=339.47,349.21");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=272.45,364.38");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=106.83,308.29");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=169.33,278.18");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=184.42,261.53");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=144.65,260.58");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=54.91,185.22");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=137.32,202.54");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=142.36,162.43");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=57.92,229.17");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=132.20,310.70");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=3.84,349.67");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=96.11,254.80");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=138.62,269.31");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=24.45,205.50");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=46.90,130.97");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=130.51,178.32");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=108.84,358.48");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=1.79,271.17");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=75.24,375.12");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=26.96,283.95");
    }

}

