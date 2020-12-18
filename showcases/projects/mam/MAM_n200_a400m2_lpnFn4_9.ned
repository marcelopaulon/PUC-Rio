
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_9
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
        @display("p=196.84,308.15");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=146.25,324.88");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=165.74,326.07");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=146.29,341.37");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=117.41,307.20");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=135.81,359.00");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=96.42,374.55");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=17.73,388.93");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=56.36,386.73");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=44.89,380.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=81.61,359.70");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=133.49,312.46");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=74.27,374.89");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=123.60,388.45");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=117.30,356.32");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=115.41,330.35");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=92.07,235.93");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=68.92,184.62");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=75.37,169.48");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=74.44,117.34");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=47.89,72.29");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=25.66,1.44");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=30.59,22.50");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=114.95,3.65");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=148.31,15.34");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=159.01,18.58");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=150.02,62.74");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=128.13,24.76");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=162.23,59.31");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=85.23,54.60");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=145.95,1.85");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=192.20,18.06");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=208.50,13.92");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=291.02,35.75");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=285.12,13.06");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=226.87,48.36");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=201.23,61.46");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=206.80,103.09");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=179.61,98.73");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=173.77,86.80");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=123.69,151.44");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=167.22,109.81");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=189.31,136.96");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=237.04,203.27");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=225.15,294.88");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=215.08,276.87");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=237.46,288.99");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=289.78,314.51");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=313.52,305.04");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=95.10,210.06");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=143.70,367.01");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=207.93,330.31");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=204.56,320.42");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=150.67,375.69");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=109.47,207.59");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=164.60,353.51");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=82.99,384.95");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=31.43,386.93");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=81.66,318.05");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=21.55,365.55");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=120.36,287.14");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=142.78,264.37");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=105.03,364.24");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=111.98,388.65");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=182.46,360.84");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=45.92,317.20");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=111.63,156.24");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=92.14,135.67");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=64.34,149.72");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=51.31,118.19");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=111.10,16.32");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=9.14,21.29");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=8.41,91.64");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=157.79,41.79");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=110.42,35.98");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=176.74,5.67");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=164.81,71.77");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=122.99,85.65");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=141.71,99.20");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=83.83,73.98");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=84.94,15.18");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=279.38,47.53");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=234.42,77.97");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=367.54,57.64");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=346.03,0.50");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=210.66,54.84");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=205.30,129.43");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=214.07,94.06");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=202.41,78.25");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=98.09,58.71");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=176.59,226.85");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=263.01,113.07");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=146.64,181.27");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=236.59,161.72");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=231.92,312.45");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=254.84,294.60");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=240.69,375.34");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=366.09,368.46");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=328.05,318.70");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=0.64,296.10");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=201.20,364.79");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=146.46,296.92");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=154.79,356.29");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=178.00,341.54");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=113.42,242.87");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=147.95,397.13");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=110.97,377.88");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=9.63,397.62");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=69.57,308.62");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=91.23,391.17");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=23.81,328.19");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=128.51,376.91");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=68.47,363.42");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=166.96,382.92");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=108.09,341.35");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=127.36,348.80");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=30.06,274.14");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=79.26,254.41");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=19.44,211.48");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=20.82,150.34");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=30.33,76.12");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=36.05,12.27");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=33.77,51.86");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=196.64,29.85");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=186.91,1.67");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=125.19,68.21");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=185.87,25.87");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=227.15,12.99");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=182.78,122.09");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=97.88,36.70");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=162.68,4.60");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=266.91,44.80");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=196.87,50.64");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=314.55,72.96");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=244.15,43.27");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=224.89,67.02");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=173.49,27.15");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=115.00,76.97");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=140.16,44.49");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=186.89,80.85");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=74.97,136.82");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=89.13,102.69");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=172.68,159.06");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=262.84,280.83");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=152.46,307.68");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=215.86,180.16");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=268.58,374.50");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=221.73,267.80");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=322.76,372.07");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=51.14,253.98");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=191.72,335.71");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=80.02,344.24");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=202.83,399.33");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=92.33,333.45");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=178.39,280.74");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=126.19,364.89");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=55.18,343.47");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=66.04,324.73");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=29.52,314.21");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=64.03,399.20");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=52.69,371.11");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=181.62,392.63");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=168.84,395.39");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=117.75,318.53");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=195.81,382.30");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=67.76,385.44");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=83.55,291.00");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=11.60,248.29");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=134.42,199.74");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=155.30,108.74");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=54.95,48.80");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=97.24,22.87");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=39.46,36.84");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=127.30,36.94");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=137.50,11.48");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=165.70,49.10");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=158.97,129.37");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=102.56,84.16");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=147.40,134.65");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=146.85,28.44");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=111.48,65.13");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=162.39,32.48");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=260.45,18.12");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=271.66,5.18");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=297.55,11.13");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=183.72,35.65");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=223.51,26.79");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=260.15,58.58");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=153.18,147.42");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=217.43,164.70");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=54.84,92.19");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=153.16,76.02");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=197.06,121.07");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=250.35,271.00");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=227.31,282.65");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=213.52,211.66");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=246.54,284.13");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=278.17,343.47");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=325.57,304.01");
    }

}

