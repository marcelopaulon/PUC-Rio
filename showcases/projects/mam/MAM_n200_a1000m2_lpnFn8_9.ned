
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_9
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=83.94,112.59");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=80.70,165.11");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=66.28,99.53");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=117.62,102.02");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=164.43,97.71");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=184.75,139.59");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=239.52,199.16");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=234.96,226.23");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=278.69,231.82");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=295.30,235.42");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=239.50,256.00");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=277.06,171.24");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=269.67,127.41");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=289.94,65.48");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=310.53,16.31");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=275.44,15.23");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=264.02,35.66");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=243.62,10.86");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=294.22,98.28");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=270.84,148.97");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=205.28,162.69");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=199.81,236.65");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=275.73,259.05");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=207.50,317.70");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=54.69,15.21");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=168.69,147.61");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=116.38,221.01");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=74.16,70.30");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=161.68,160.14");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=218.79,80.07");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=131.39,115.43");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=181.10,240.71");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=265.41,225.05");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=285.10,244.21");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=288.47,266.56");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=279.22,347.22");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=281.65,211.41");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=353.12,110.68");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=338.39,96.37");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=328.69,25.19");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=306.81,6.80");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=299.26,81.97");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=265.83,47.94");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=323.81,92.55");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=267.87,235.88");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=213.54,108.27");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=188.91,249.11");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=335.51,182.06");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=263.12,259.48");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=96.03,64.54");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=57.65,129.31");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=71.09,191.16");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=67.82,163.38");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=114.66,91.40");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=172.85,77.38");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=187.22,109.54");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=256.51,199.26");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=229.97,193.09");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=300.68,184.68");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=323.10,227.09");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=223.41,260.97");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=347.00,193.12");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=279.79,123.42");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=346.99,133.69");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=360.96,96.89");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=322.21,36.56");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=255.44,57.83");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=163.48,66.63");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=296.65,118.92");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=283.79,201.56");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=171.80,119.24");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=251.33,297.80");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=317.56,270.10");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=217.98,309.23");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=35.32,33.87");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=114.85,113.10");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=57.51,164.97");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=13.38,152.49");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=141.73,117.88");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=197.38,66.85");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=223.11,201.68");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=192.00,147.15");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=223.17,229.67");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=282.73,297.39");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=336.73,234.31");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=167.45,189.96");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=313.73,202.13");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=278.80,102.37");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=273.03,83.04");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=406.37,26.29");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=211.55,8.79");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=247.44,20.12");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=213.65,20.37");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=272.66,159.18");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=285.29,147.02");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=133.19,144.44");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=172.33,290.97");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=190.87,309.47");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=247.05,238.84");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=132.82,133.66");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=54.33,27.24");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=154.32,134.37");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=56.65,65.04");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=155.53,113.52");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=104.91,32.60");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=223.03,101.89");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=265.46,192.80");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=207.30,289.93");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=227.82,168.92");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=236.66,278.51");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=238.43,212.31");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=298.09,259.32");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=255.18,145.19");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=300.78,69.80");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=320.56,17.87");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=252.17,39.73");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=241.38,116.25");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=277.23,4.06");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=318.25,68.39");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=254.52,72.53");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=152.56,234.10");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=246.70,190.00");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=216.42,270.54");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=288.68,341.36");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=29.04,121.77");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=79.90,143.45");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=92.90,183.15");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=4.28,173.24");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=83.90,50.47");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=172.10,159.81");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=202.93,141.98");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=238.86,266.21");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=229.13,179.89");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=281.86,277.40");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=377.71,254.64");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=236.17,317.80");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=221.62,128.21");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=337.85,128.69");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=263.83,24.69");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=350.47,82.10");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=210.59,54.35");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=204.94,40.63");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=180.47,19.00");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=355.73,140.40");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=199.61,176.78");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=296.12,134.96");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=218.53,243.67");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=305.35,279.31");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=171.58,304.17");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=49.17,111.41");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=94.45,133.42");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=11.72,93.34");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=117.27,138.45");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=94.96,119.98");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=235.67,93.30");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=213.22,70.46");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=306.39,219.67");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=273.09,293.92");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=217.93,210.85");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=297.05,215.03");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=316.97,250.76");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=355.02,212.06");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=209.22,123.87");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=300.28,58.71");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=337.50,11.10");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=228.85,53.75");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=252.53,134.21");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=238.42,32.15");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=268.02,95.92");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=311.60,237.87");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=168.28,232.56");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=232.85,242.08");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=348.96,203.08");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=195.43,326.58");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=12.67,110.28");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=153.11,147.20");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=69.16,176.09");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=106.79,181.47");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=109.46,51.81");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=186.95,44.15");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=130.14,79.91");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=273.26,184.72");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=192.39,201.81");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=198.82,267.36");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=257.90,168.58");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=268.37,306.17");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=290.37,174.17");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=254.37,91.59");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=323.20,3.19");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=350.29,66.25");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=227.27,67.50");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=282.98,47.20");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=176.77,34.43");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=238.83,174.85");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=250.23,107.80");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=257.87,116.31");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=194.66,223.10");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=208.62,205.27");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=263.44,287.84");
    }

}

