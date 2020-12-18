
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM200-5
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
        @display("p=96.00,125.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=121.50,88.10");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=111.59,162.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=83.98,218.51");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=114.67,239.86");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=104.00,235.51");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=111.84,212.85");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=53.41,144.30");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=164.87,155.50");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=142.59,154.82");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=239.83,158.17");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=232.22,140.01");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=197.02,208.58");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=159.26,141.37");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=178.63,178.84");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=240.49,111.01");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=157.07,111.63");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=221.50,171.46");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=273.05,163.23");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=301.47,193.73");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=334.00,255.51");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=329.07,264.93");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=305.70,266.07");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=354.98,266.51");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=375.14,238.87");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=343.76,221.10");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=354.80,219.83");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=325.35,218.87");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=261.39,256.71");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=265.46,327.15");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=260.26,346.38");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=250.93,320.25");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=267.45,302.91");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=218.77,349.89");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=312.78,318.46");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=320.52,289.01");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=323.80,312.58");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=336.56,337.11");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=351.82,278.35");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=365.43,291.51");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=391.74,293.01");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=396.16,207.28");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=309.87,184.76");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=357.95,166.62");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=341.23,197.81");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=254.33,196.25");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=231.60,284.48");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=176.07,274.31");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=129.21,244.52");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=163.76,335.77");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=142.00,285.51");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=69.73,284.47");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=125.69,314.13");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=89.19,282.25");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=117.39,350.86");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=134.25,356.04");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=96.10,394.76");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=159.40,362.40");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=131.51,332.19");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=147.32,339.89");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=81.21,342.20");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=89.81,336.05");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=68.93,321.49");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=104.82,381.41");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=181.37,385.52");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=275.45,398.94");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=201.49,372.75");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=152.93,375.24");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=234.58,348.25");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=261.44,285.27");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=222.13,316.12");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=213.89,383.30");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=109.06,367.45");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=123.36,218.76");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=64.25,220.72");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=137.08,250.94");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=88.84,299.23");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=95.73,312.91");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=53.51,304.59");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=30.98,308.88");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=38.04,348.85");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=64.29,310.24");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=100.71,301.12");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=157.73,274.98");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=160.37,263.28");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=59.59,203.21");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=140.38,179.26");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=170.89,209.14");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=158.88,232.95");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=127.79,205.81");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=119.25,155.35");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=101.84,109.17");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=119.22,31.36");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=118.81,60.14");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=118.07,49.15");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=102.45,56.59");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=84.06,3.04");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=19.34,69.28");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=121.69,175.73");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=172.17,103.70");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=48.86,183.42");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=185.50,130.66");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=212.80,84.90");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=219.60,75.92");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=231.38,115.63");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=209.30,112.92");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=184.06,227.35");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=215.70,204.78");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=308.91,158.77");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=314.98,143.23");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=300.17,130.05");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=248.44,103.05");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=259.94,15.65");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=183.07,42.91");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=207.03,33.50");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=263.12,69.20");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=332.49,4.15");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=292.36,6.20");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=242.82,79.66");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=285.12,58.97");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=322.10,54.67");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=322.18,67.73");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=219.64,101.76");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=233.89,67.14");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=165.87,62.22");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=84.64,137.63");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=140.29,98.87");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=42.12,133.50");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=15.78,190.90");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=155.82,243.11");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=105.79,277.79");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=111.77,296.91");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=66.30,125.55");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=99.91,136.35");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=134.88,170.13");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=223.20,152.81");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=185.24,116.97");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=184.64,208.83");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=193.03,70.30");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=194.10,163.29");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=248.12,138.53");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=91.24,105.92");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=210.45,135.07");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=274.07,174.91");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=282.81,117.16");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=306.90,242.47");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=276.19,249.83");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=336.63,208.85");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=295.05,259.41");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=353.96,293.37");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=381.97,197.01");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=324.15,298.40");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=323.75,119.72");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=294.68,280.15");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=176.33,337.09");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=258.03,312.55");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=294.89,363.10");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=297.77,313.59");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=193.38,303.32");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=329.87,324.45");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=314.23,330.02");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=378.44,391.37");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=337.99,279.26");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=336.95,244.84");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=341.31,309.24");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=386.45,325.59");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=368.84,280.72");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=296.90,167.67");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=293.14,220.19");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=398.59,159.62");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=268.30,205.06");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=220.56,238.31");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=148.92,352.57");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=29.73,249.50");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=115.76,393.27");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=200.52,324.95");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=19.64,252.49");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=126.63,303.46");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=125.88,290.62");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=168.76,282.12");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=176.33,360.48");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=43.15,386.78");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=71.07,393.65");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=111.56,333.09");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=132.10,271.79");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=72.82,260.35");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=49.47,320.36");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=66.01,244.29");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=58.90,347.76");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=192.97,366.00");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=224.75,327.09");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=194.39,391.84");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=160.72,381.60");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=283.90,293.07");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=267.61,361.03");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=191.09,335.89");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=241.77,303.18");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=22.65,362.37");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=143.46,140.61");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=7.30,140.12");
    }

    host_lpn_201: <default("SensorNode")> like INetworkNode {
        @display("p=175.63,291.24");
    }

    host_lpn_202: <default("SensorNode")> like INetworkNode {
        @display("p=74.16,296.47");
    }

    host_lpn_203: <default("SensorNode")> like INetworkNode {
        @display("p=27.57,275.47");
    }

    host_lpn_204: <default("SensorNode")> like INetworkNode {
        @display("p=9.34,374.34");
    }

    host_lpn_205: <default("SensorNode")> like INetworkNode {
        @display("p=62.00,292.83");
    }

    host_lpn_206: <default("SensorNode")> like INetworkNode {
        @display("p=38.89,291.81");
    }

    host_lpn_207: <default("SensorNode")> like INetworkNode {
        @display("p=30.52,376.84");
    }

    host_lpn_208: <default("SensorNode")> like INetworkNode {
        @display("p=121.88,268.44");
    }

    host_lpn_209: <default("SensorNode")> like INetworkNode {
        @display("p=89.28,253.09");
    }

    host_lpn_210: <default("SensorNode")> like INetworkNode {
        @display("p=222.83,274.76");
    }

    host_lpn_211: <default("SensorNode")> like INetworkNode {
        @display("p=40.47,216.86");
    }

    host_lpn_212: <default("SensorNode")> like INetworkNode {
        @display("p=80.48,171.30");
    }

    host_lpn_213: <default("SensorNode")> like INetworkNode {
        @display("p=214.84,228.86");
    }

    host_lpn_214: <default("SensorNode")> like INetworkNode {
        @display("p=151.57,218.88");
    }

    host_lpn_215: <default("SensorNode")> like INetworkNode {
        @display("p=149.95,203.71");
    }

    host_lpn_216: <default("SensorNode")> like INetworkNode {
        @display("p=130.48,230.10");
    }

    host_lpn_217: <default("SensorNode")> like INetworkNode {
        @display("p=114.00,109.02");
    }

    host_lpn_218: <default("SensorNode")> like INetworkNode {
        @display("p=118.65,15.77");
    }

    host_lpn_219: <default("SensorNode")> like INetworkNode {
        @display("p=95.32,4.06");
    }

    host_lpn_220: <default("SensorNode")> like INetworkNode {
        @display("p=56.94,103.26");
    }

    host_lpn_221: <default("SensorNode")> like INetworkNode {
        @display("p=80.04,22.69");
    }

    host_lpn_222: <default("SensorNode")> like INetworkNode {
        @display("p=66.57,29.29");
    }

    host_lpn_223: <default("SensorNode")> like INetworkNode {
        @display("p=42.29,90.54");
    }

    host_lpn_224: <default("SensorNode")> like INetworkNode {
        @display("p=114.97,195.27");
    }

    host_lpn_225: <default("SensorNode")> like INetworkNode {
        @display("p=202.72,93.52");
    }

    host_lpn_226: <default("SensorNode")> like INetworkNode {
        @display("p=10.44,182.11");
    }

    host_lpn_227: <default("SensorNode")> like INetworkNode {
        @display("p=197.11,134.21");
    }

    host_lpn_228: <default("SensorNode")> like INetworkNode {
        @display("p=199.33,41.46");
    }

    host_lpn_229: <default("SensorNode")> like INetworkNode {
        @display("p=261.16,49.30");
    }

    host_lpn_230: <default("SensorNode")> like INetworkNode {
        @display("p=260.78,92.74");
    }

    host_lpn_231: <default("SensorNode")> like INetworkNode {
        @display("p=305.61,105.61");
    }

    host_lpn_232: <default("SensorNode")> like INetworkNode {
        @display("p=168.04,303.02");
    }

    host_lpn_233: <default("SensorNode")> like INetworkNode {
        @display("p=200.31,221.49");
    }

    host_lpn_234: <default("SensorNode")> like INetworkNode {
        @display("p=269.91,193.12");
    }

    host_lpn_235: <default("SensorNode")> like INetworkNode {
        @display("p=345.26,180.01");
    }

    host_lpn_236: <default("SensorNode")> like INetworkNode {
        @display("p=324.59,92.53");
    }

    host_lpn_237: <default("SensorNode")> like INetworkNode {
        @display("p=243.34,91.44");
    }

    host_lpn_238: <default("SensorNode")> like INetworkNode {
        @display("p=166.06,25.08");
    }

    host_lpn_239: <default("SensorNode")> like INetworkNode {
        @display("p=256.45,82.92");
    }

    host_lpn_240: <default("SensorNode")> like INetworkNode {
        @display("p=194.29,25.84");
    }

    host_lpn_241: <default("SensorNode")> like INetworkNode {
        @display("p=233.87,55.51");
    }

    host_lpn_242: <default("SensorNode")> like INetworkNode {
        @display("p=292.38,31.92");
    }

    host_lpn_243: <default("SensorNode")> like INetworkNode {
        @display("p=264.48,38.28");
    }

    host_lpn_244: <default("SensorNode")> like INetworkNode {
        @display("p=183.12,8.04");
    }

    host_lpn_245: <default("SensorNode")> like INetworkNode {
        @display("p=287.78,72.00");
    }

    host_lpn_246: <default("SensorNode")> like INetworkNode {
        @display("p=309.28,43.86");
    }

    host_lpn_247: <default("SensorNode")> like INetworkNode {
        @display("p=232.21,77.64");
    }

    host_lpn_248: <default("SensorNode")> like INetworkNode {
        @display("p=157.90,46.52");
    }

    host_lpn_249: <default("SensorNode")> like INetworkNode {
        @display("p=182.13,74.19");
    }

    host_lpn_250: <default("SensorNode")> like INetworkNode {
        @display("p=167.71,89.31");
    }

    host_lpn_251: <default("SensorNode")> like INetworkNode {
        @display("p=5.04,109.06");
    }

    host_lpn_252: <default("SensorNode")> like INetworkNode {
        @display("p=85.03,46.88");
    }

    host_lpn_253: <default("SensorNode")> like INetworkNode {
        @display("p=162.05,176.31");
    }

    host_lpn_254: <default("SensorNode")> like INetworkNode {
        @display("p=81.95,230.53");
    }

    host_lpn_255: <default("SensorNode")> like INetworkNode {
        @display("p=17.37,232.82");
    }

    host_lpn_256: <default("SensorNode")> like INetworkNode {
        @display("p=48.37,244.95");
    }

    host_lpn_257: <default("SensorNode")> like INetworkNode {
        @display("p=33.26,199.37");
    }

    host_lpn_258: <default("SensorNode")> like INetworkNode {
        @display("p=96.82,214.93");
    }

    host_lpn_259: <default("SensorNode")> like INetworkNode {
        @display("p=168.29,224.73");
    }

    host_lpn_260: <default("SensorNode")> like INetworkNode {
        @display("p=156.93,67.42");
    }

    host_lpn_261: <default("SensorNode")> like INetworkNode {
        @display("p=226.46,214.19");
    }

    host_lpn_262: <default("SensorNode")> like INetworkNode {
        @display("p=257.10,112.70");
    }

    host_lpn_263: <default("SensorNode")> like INetworkNode {
        @display("p=175.76,195.48");
    }

    host_lpn_264: <default("SensorNode")> like INetworkNode {
        @display("p=205.03,173.76");
    }

    host_lpn_265: <default("SensorNode")> like INetworkNode {
        @display("p=243.00,122.28");
    }

    host_lpn_266: <default("SensorNode")> like INetworkNode {
        @display("p=199.44,152.62");
    }

    host_lpn_267: <default("SensorNode")> like INetworkNode {
        @display("p=226.65,130.35");
    }

    host_lpn_268: <default("SensorNode")> like INetworkNode {
        @display("p=261.97,182.00");
    }

    host_lpn_269: <default("SensorNode")> like INetworkNode {
        @display("p=287.95,175.09");
    }

    host_lpn_270: <default("SensorNode")> like INetworkNode {
        @display("p=261.71,216.75");
    }

    host_lpn_271: <default("SensorNode")> like INetworkNode {
        @display("p=369.00,224.27");
    }

    host_lpn_272: <default("SensorNode")> like INetworkNode {
        @display("p=324.75,207.39");
    }

    host_lpn_273: <default("SensorNode")> like INetworkNode {
        @display("p=331.99,232.29");
    }

    host_lpn_274: <default("SensorNode")> like INetworkNode {
        @display("p=380.63,309.08");
    }

    host_lpn_275: <default("SensorNode")> like INetworkNode {
        @display("p=396.35,181.88");
    }

    host_lpn_276: <default("SensorNode")> like INetworkNode {
        @display("p=352.50,209.07");
    }

    host_lpn_277: <default("SensorNode")> like INetworkNode {
        @display("p=363.15,210.80");
    }

    host_lpn_278: <default("SensorNode")> like INetworkNode {
        @display("p=266.70,145.62");
    }

    host_lpn_279: <default("SensorNode")> like INetworkNode {
        @display("p=315.52,273.16");
    }

    host_lpn_280: <default("SensorNode")> like INetworkNode {
        @display("p=273.14,277.48");
    }

    host_lpn_281: <default("SensorNode")> like INetworkNode {
        @display("p=251.52,364.51");
    }

    host_lpn_282: <default("SensorNode")> like INetworkNode {
        @display("p=283.42,329.22");
    }

    host_lpn_283: <default("SensorNode")> like INetworkNode {
        @display("p=294.60,300.59");
    }

    host_lpn_284: <default("SensorNode")> like INetworkNode {
        @display("p=280.71,345.00");
    }

    host_lpn_285: <default("SensorNode")> like INetworkNode {
        @display("p=336.84,299.82");
    }

    host_lpn_286: <default("SensorNode")> like INetworkNode {
        @display("p=371.36,253.31");
    }

    host_lpn_287: <default("SensorNode")> like INetworkNode {
        @display("p=304.90,302.33");
    }

    host_lpn_288: <default("SensorNode")> like INetworkNode {
        @display("p=356.84,356.00");
    }

    host_lpn_289: <default("SensorNode")> like INetworkNode {
        @display("p=296.31,246.05");
    }

    host_lpn_290: <default("SensorNode")> like INetworkNode {
        @display("p=370.69,330.64");
    }

    host_lpn_291: <default("SensorNode")> like INetworkNode {
        @display("p=370.24,346.07");
    }

    host_lpn_292: <default("SensorNode")> like INetworkNode {
        @display("p=377.65,129.88");
    }

    host_lpn_293: <default("SensorNode")> like INetworkNode {
        @display("p=336.21,186.76");
    }

    host_lpn_294: <default("SensorNode")> like INetworkNode {
        @display("p=323.30,251.84");
    }

    host_lpn_295: <default("SensorNode")> like INetworkNode {
        @display("p=326.58,135.57");
    }

    host_lpn_296: <default("SensorNode")> like INetworkNode {
        @display("p=278.93,230.14");
    }

    host_lpn_297: <default("SensorNode")> like INetworkNode {
        @display("p=218.62,371.30");
    }

    host_lpn_298: <default("SensorNode")> like INetworkNode {
        @display("p=83.08,270.92");
    }

    host_lpn_299: <default("SensorNode")> like INetworkNode {
        @display("p=197.61,235.99");
    }

    host_lpn_300: <default("SensorNode")> like INetworkNode {
        @display("p=204.38,272.74");
    }

    host_lpn_301: <default("SensorNode")> like INetworkNode {
        @display("p=202.36,284.74");
    }

    host_lpn_302: <default("SensorNode")> like INetworkNode {
        @display("p=97.63,247.45");
    }

    host_lpn_303: <default("SensorNode")> like INetworkNode {
        @display("p=81.93,243.41");
    }

    host_lpn_304: <default("SensorNode")> like INetworkNode {
        @display("p=22.90,299.53");
    }

    host_lpn_305: <default("SensorNode")> like INetworkNode {
        @display("p=72.46,330.86");
    }

    host_lpn_306: <default("SensorNode")> like INetworkNode {
        @display("p=158.15,323.40");
    }

    host_lpn_307: <default("SensorNode")> like INetworkNode {
        @display("p=0.76,397.39");
    }

    host_lpn_308: <default("SensorNode")> like INetworkNode {
        @display("p=229.14,391.07");
    }

    host_lpn_309: <default("SensorNode")> like INetworkNode {
        @display("p=117.70,380.82");
    }

    host_lpn_310: <default("SensorNode")> like INetworkNode {
        @display("p=148.62,365.83");
    }

    host_lpn_311: <default("SensorNode")> like INetworkNode {
        @display("p=70.88,357.84");
    }

    host_lpn_312: <default("SensorNode")> like INetworkNode {
        @display("p=92.68,378.36");
    }

    host_lpn_313: <default("SensorNode")> like INetworkNode {
        @display("p=56.94,328.01");
    }

    host_lpn_314: <default("SensorNode")> like INetworkNode {
        @display("p=38.70,369.17");
    }

    host_lpn_315: <default("SensorNode")> like INetworkNode {
        @display("p=179.66,398.79");
    }

    host_lpn_316: <default("SensorNode")> like INetworkNode {
        @display("p=299.13,399.57");
    }

    host_lpn_317: <default("SensorNode")> like INetworkNode {
        @display("p=248.78,395.37");
    }

    host_lpn_318: <default("SensorNode")> like INetworkNode {
        @display("p=135.68,398.84");
    }

    host_lpn_319: <default("SensorNode")> like INetworkNode {
        @display("p=223.84,294.82");
    }

    host_lpn_320: <default("SensorNode")> like INetworkNode {
        @display("p=226.71,198.06");
    }

    host_lpn_321: <default("SensorNode")> like INetworkNode {
        @display("p=181.66,300.34");
    }

    host_lpn_322: <default("SensorNode")> like INetworkNode {
        @display("p=281.11,388.62");
    }

    host_lpn_323: <default("SensorNode")> like INetworkNode {
        @display("p=106.95,355.52");
    }

    host_lpn_324: <default("SensorNode")> like INetworkNode {
        @display("p=101.28,186.97");
    }

    host_lpn_325: <default("SensorNode")> like INetworkNode {
        @display("p=10.70,155.73");
    }

    host_lpn_326: <default("SensorNode")> like INetworkNode {
        @display("p=109.42,260.44");
    }

    host_lpn_327: <default("SensorNode")> like INetworkNode {
        @display("p=175.31,256.59");
    }

    host_lpn_328: <default("SensorNode")> like INetworkNode {
        @display("p=123.95,361.96");
    }

    host_lpn_329: <default("SensorNode")> like INetworkNode {
        @display("p=51.93,285.71");
    }

    host_lpn_330: <default("SensorNode")> like INetworkNode {
        @display("p=77.13,306.18");
    }

    host_lpn_331: <default("SensorNode")> like INetworkNode {
        @display("p=38.91,331.86");
    }

    host_lpn_332: <default("SensorNode")> like INetworkNode {
        @display("p=12.56,325.43");
    }

    host_lpn_333: <default("SensorNode")> like INetworkNode {
        @display("p=181.62,317.07");
    }

    host_lpn_334: <default("SensorNode")> like INetworkNode {
        @display("p=67.73,269.70");
    }

    host_lpn_335: <default("SensorNode")> like INetworkNode {
        @display("p=167.22,250.07");
    }

    host_lpn_336: <default("SensorNode")> like INetworkNode {
        @display("p=76.12,185.90");
    }

    host_lpn_337: <default("SensorNode")> like INetworkNode {
        @display("p=152.08,186.16");
    }

    host_lpn_338: <default("SensorNode")> like INetworkNode {
        @display("p=241.47,264.75");
    }

    host_lpn_339: <default("SensorNode")> like INetworkNode {
        @display("p=187.89,145.17");
    }

    host_lpn_340: <default("SensorNode")> like INetworkNode {
        @display("p=88.62,207.66");
    }

    host_lpn_341: <default("SensorNode")> like INetworkNode {
        @display("p=143.45,111.93");
    }

    host_lpn_342: <default("SensorNode")> like INetworkNode {
        @display("p=96.74,154.51");
    }

    host_lpn_343: <default("SensorNode")> like INetworkNode {
        @display("p=154.42,31.73");
    }

    host_lpn_344: <default("SensorNode")> like INetworkNode {
        @display("p=216.55,65.94");
    }

    host_lpn_345: <default("SensorNode")> like INetworkNode {
        @display("p=139.73,81.48");
    }

    host_lpn_346: <default("SensorNode")> like INetworkNode {
        @display("p=104.68,35.44");
    }

    host_lpn_347: <default("SensorNode")> like INetworkNode {
        @display("p=75.39,40.25");
    }

    host_lpn_348: <default("SensorNode")> like INetworkNode {
        @display("p=17.88,109.95");
    }

    host_lpn_349: <default("SensorNode")> like INetworkNode {
        @display("p=70.60,139.99");
    }

    host_lpn_350: <default("SensorNode")> like INetworkNode {
        @display("p=179.03,164.34");
    }

    host_lpn_351: <default("SensorNode")> like INetworkNode {
        @display("p=10.92,117.93");
    }

    host_lpn_352: <default("SensorNode")> like INetworkNode {
        @display("p=157.59,129.85");
    }

    host_lpn_353: <default("SensorNode")> like INetworkNode {
        @display("p=183.86,100.95");
    }

    host_lpn_354: <default("SensorNode")> like INetworkNode {
        @display("p=222.70,87.35");
    }

    host_lpn_355: <default("SensorNode")> like INetworkNode {
        @display("p=285.92,103.00");
    }

    host_lpn_356: <default("SensorNode")> like INetworkNode {
        @display("p=237.78,40.60");
    }

    host_lpn_357: <default("SensorNode")> like INetworkNode {
        @display("p=166.37,239.72");
    }

    host_lpn_358: <default("SensorNode")> like INetworkNode {
        @display("p=244.33,202.72");
    }

    host_lpn_359: <default("SensorNode")> like INetworkNode {
        @display("p=333.64,170.60");
    }

    host_lpn_360: <default("SensorNode")> like INetworkNode {
        @display("p=299.32,207.21");
    }

    host_lpn_361: <default("SensorNode")> like INetworkNode {
        @display("p=354.87,193.90");
    }

    host_lpn_362: <default("SensorNode")> like INetworkNode {
        @display("p=275.76,90.49");
    }

    host_lpn_363: <default("SensorNode")> like INetworkNode {
        @display("p=180.02,28.47");
    }

    host_lpn_364: <default("SensorNode")> like INetworkNode {
        @display("p=174.41,51.42");
    }

    host_lpn_365: <default("SensorNode")> like INetworkNode {
        @display("p=275.81,102.75");
    }

    host_lpn_366: <default("SensorNode")> like INetworkNode {
        @display("p=274.32,65.25");
    }

    host_lpn_367: <default("SensorNode")> like INetworkNode {
        @display("p=342.53,13.38");
    }

    host_lpn_368: <default("SensorNode")> like INetworkNode {
        @display("p=267.93,6.12");
    }

    host_lpn_369: <default("SensorNode")> like INetworkNode {
        @display("p=231.75,104.51");
    }

    host_lpn_370: <default("SensorNode")> like INetworkNode {
        @display("p=331.83,43.58");
    }

    host_lpn_371: <default("SensorNode")> like INetworkNode {
        @display("p=307.57,22.54");
    }

    host_lpn_372: <default("SensorNode")> like INetworkNode {
        @display("p=352.57,33.37");
    }

    host_lpn_373: <default("SensorNode")> like INetworkNode {
        @display("p=246.76,19.73");
    }

    host_lpn_374: <default("SensorNode")> like INetworkNode {
        @display("p=186.00,86.88");
    }

    host_lpn_375: <default("SensorNode")> like INetworkNode {
        @display("p=138.75,28.90");
    }

    host_lpn_376: <default("SensorNode")> like INetworkNode {
        @display("p=73.35,103.13");
    }

    host_lpn_377: <default("SensorNode")> like INetworkNode {
        @display("p=101.32,99.14");
    }

    host_lpn_378: <default("SensorNode")> like INetworkNode {
        @display("p=133.30,216.37");
    }

    host_lpn_379: <default("SensorNode")> like INetworkNode {
        @display("p=91.85,234.32");
    }

    host_lpn_380: <default("SensorNode")> like INetworkNode {
        @display("p=59.63,263.78");
    }

    host_lpn_381: <default("SensorNode")> like INetworkNode {
        @display("p=118.78,256.57");
    }

    host_lpn_382: <default("SensorNode")> like INetworkNode {
        @display("p=59.15,192.67");
    }

    host_lpn_383: <default("SensorNode")> like INetworkNode {
        @display("p=44.16,157.35");
    }

    host_lpn_384: <default("SensorNode")> like INetworkNode {
        @display("p=215.82,120.70");
    }

    host_lpn_385: <default("SensorNode")> like INetworkNode {
        @display("p=150.82,79.05");
    }

    host_lpn_386: <default("SensorNode")> like INetworkNode {
        @display("p=287.88,190.24");
    }

    host_lpn_387: <default("SensorNode")> like INetworkNode {
        @display("p=212.35,192.14");
    }

    host_lpn_388: <default("SensorNode")> like INetworkNode {
        @display("p=192.88,262.01");
    }

    host_lpn_389: <default("SensorNode")> like INetworkNode {
        @display("p=176.74,149.57");
    }

    host_lpn_390: <default("SensorNode")> like INetworkNode {
        @display("p=178.03,138.26");
    }

    host_lpn_391: <default("SensorNode")> like INetworkNode {
        @display("p=323.54,160.73");
    }

    host_lpn_392: <default("SensorNode")> like INetworkNode {
        @display("p=129.83,53.78");
    }

    host_lpn_393: <default("SensorNode")> like INetworkNode {
        @display("p=191.84,199.22");
    }

    host_lpn_394: <default("SensorNode")> like INetworkNode {
        @display("p=278.06,143.62");
    }

    host_lpn_395: <default("SensorNode")> like INetworkNode {
        @display("p=253.39,245.59");
    }

    host_lpn_396: <default("SensorNode")> like INetworkNode {
        @display("p=359.76,255.17");
    }

    host_lpn_397: <default("SensorNode")> like INetworkNode {
        @display("p=294.65,326.29");
    }

    host_lpn_398: <default("SensorNode")> like INetworkNode {
        @display("p=387.58,246.52");
    }

    host_lpn_399: <default("SensorNode")> like INetworkNode {
        @display("p=360.95,237.02");
    }

    host_lpn_400: <default("SensorNode")> like INetworkNode {
        @display("p=380.84,221.15");
    }

    host_lpn_401: <default("SensorNode")> like INetworkNode {
        @display("p=319.37,230.83");
    }

    host_lpn_402: <default("SensorNode")> like INetworkNode {
        @display("p=342.17,288.41");
    }

    host_lpn_403: <default("SensorNode")> like INetworkNode {
        @display("p=296.37,230.88");
    }

    host_lpn_404: <default("SensorNode")> like INetworkNode {
        @display("p=244.84,345.59");
    }

    host_lpn_405: <default("SensorNode")> like INetworkNode {
        @display("p=323.66,387.58");
    }

    host_lpn_406: <default("SensorNode")> like INetworkNode {
        @display("p=245.80,356.04");
    }

    host_lpn_407: <default("SensorNode")> like INetworkNode {
        @display("p=212.73,340.65");
    }

    host_lpn_408: <default("SensorNode")> like INetworkNode {
        @display("p=236.33,226.87");
    }

    host_lpn_409: <default("SensorNode")> like INetworkNode {
        @display("p=227.97,258.59");
    }

    host_lpn_410: <default("SensorNode")> like INetworkNode {
        @display("p=287.33,267.75");
    }

    host_lpn_411: <default("SensorNode")> like INetworkNode {
        @display("p=282.53,258.28");
    }

    host_lpn_412: <default("SensorNode")> like INetworkNode {
        @display("p=308.47,292.48");
    }

    host_lpn_413: <default("SensorNode")> like INetworkNode {
        @display("p=335.78,350.81");
    }

    host_lpn_414: <default("SensorNode")> like INetworkNode {
        @display("p=334.61,367.81");
    }

    host_lpn_415: <default("SensorNode")> like INetworkNode {
        @display("p=381.58,298.04");
    }

    host_lpn_416: <default("SensorNode")> like INetworkNode {
        @display("p=383.43,282.99");
    }

    host_lpn_417: <default("SensorNode")> like INetworkNode {
        @display("p=393.42,134.67");
    }

    host_lpn_418: <default("SensorNode")> like INetworkNode {
        @display("p=285.78,159.75");
    }

    host_lpn_419: <default("SensorNode")> like INetworkNode {
        @display("p=275.73,131.79");
    }

    host_lpn_420: <default("SensorNode")> like INetworkNode {
        @display("p=322.24,196.55");
    }

    host_lpn_421: <default("SensorNode")> like INetworkNode {
        @display("p=298.34,145.47");
    }

    host_lpn_422: <default("SensorNode")> like INetworkNode {
        @display("p=250.13,224.35");
    }

    host_lpn_423: <default("SensorNode")> like INetworkNode {
        @display("p=145.64,267.22");
    }

    host_lpn_424: <default("SensorNode")> like INetworkNode {
        @display("p=101.75,268.08");
    }

    host_lpn_425: <default("SensorNode")> like INetworkNode {
        @display("p=102.59,289.94");
    }

    host_lpn_426: <default("SensorNode")> like INetworkNode {
        @display("p=177.84,245.51");
    }

    host_lpn_427: <default("SensorNode")> like INetworkNode {
        @display("p=49.28,269.37");
    }

    host_lpn_428: <default("SensorNode")> like INetworkNode {
        @display("p=158.87,395.53");
    }

    host_lpn_429: <default("SensorNode")> like INetworkNode {
        @display("p=32.92,238.03");
    }

    host_lpn_430: <default("SensorNode")> like INetworkNode {
        @display("p=56.02,379.28");
    }

    host_lpn_431: <default("SensorNode")> like INetworkNode {
        @display("p=72.54,373.94");
    }

    host_lpn_432: <default("SensorNode")> like INetworkNode {
        @display("p=80.81,379.92");
    }

    host_lpn_433: <default("SensorNode")> like INetworkNode {
        @display("p=182.91,283.07");
    }

    host_lpn_434: <default("SensorNode")> like INetworkNode {
        @display("p=209.28,294.91");
    }

    host_lpn_435: <default("SensorNode")> like INetworkNode {
        @display("p=171.13,379.25");
    }

    host_lpn_436: <default("SensorNode")> like INetworkNode {
        @display("p=170.30,348.90");
    }

    host_lpn_437: <default("SensorNode")> like INetworkNode {
        @display("p=136.96,367.40");
    }

    host_lpn_438: <default("SensorNode")> like INetworkNode {
        @display("p=132.63,385.53");
    }

    host_lpn_439: <default("SensorNode")> like INetworkNode {
        @display("p=202.18,383.06");
    }

    host_lpn_440: <default("SensorNode")> like INetworkNode {
        @display("p=259.81,375.64");
    }

    host_lpn_441: <default("SensorNode")> like INetworkNode {
        @display("p=264.52,386.39");
    }

    host_lpn_442: <default("SensorNode")> like INetworkNode {
        @display("p=194.48,351.19");
    }

    host_lpn_443: <default("SensorNode")> like INetworkNode {
        @display("p=145.74,390.42");
    }

    host_lpn_444: <default("SensorNode")> like INetworkNode {
        @display("p=302.65,339.19");
    }

    host_lpn_445: <default("SensorNode")> like INetworkNode {
        @display("p=238.26,239.50");
    }

    host_lpn_446: <default("SensorNode")> like INetworkNode {
        @display("p=235.98,323.06");
    }

    host_lpn_447: <default("SensorNode")> like INetworkNode {
        @display("p=311.11,375.79");
    }

    host_lpn_448: <default("SensorNode")> like INetworkNode {
        @display("p=50.32,353.04");
    }

    host_lpn_449: <default("SensorNode")> like INetworkNode {
        @display("p=71.94,208.81");
    }

    host_lpn_450: <default("SensorNode")> like INetworkNode {
        @display("p=25.94,206.47");
    }

    host_lpn_451: <default("SensorNode")> like INetworkNode {
        @display("p=146.17,231.55");
    }

    host_lpn_452: <default("SensorNode")> like INetworkNode {
        @display("p=67.78,233.72");
    }

    host_lpn_453: <default("SensorNode")> like INetworkNode {
        @display("p=90.35,324.38");
    }

    host_lpn_454: <default("SensorNode")> like INetworkNode {
        @display("p=34.11,264.42");
    }

    host_lpn_455: <default("SensorNode")> like INetworkNode {
        @display("p=13.47,269.97");
    }

    host_lpn_456: <default("SensorNode")> like INetworkNode {
        @display("p=18.59,395.03");
    }

    host_lpn_457: <default("SensorNode")> like INetworkNode {
        @display("p=98.43,365.62");
    }

    host_lpn_458: <default("SensorNode")> like INetworkNode {
        @display("p=21.22,333.82");
    }

    host_lpn_459: <default("SensorNode")> like INetworkNode {
        @display("p=142.88,298.68");
    }

    host_lpn_460: <default("SensorNode")> like INetworkNode {
        @display("p=184.67,190.32");
    }

    host_lpn_461: <default("SensorNode")> like INetworkNode {
        @display("p=11.86,204.77");
    }

    host_lpn_462: <default("SensorNode")> like INetworkNode {
        @display("p=108.21,225.46");
    }

    host_lpn_463: <default("SensorNode")> like INetworkNode {
        @display("p=211.69,219.25");
    }

    host_lpn_464: <default("SensorNode")> like INetworkNode {
        @display("p=192.50,318.94");
    }

    host_lpn_465: <default("SensorNode")> like INetworkNode {
        @display("p=162.68,187.11");
    }

    host_lpn_466: <default("SensorNode")> like INetworkNode {
        @display("p=158.83,196.96");
    }

    host_lpn_467: <default("SensorNode")> like INetworkNode {
        @display("p=111.89,135.40");
    }

    host_lpn_468: <default("SensorNode")> like INetworkNode {
        @display("p=102.36,21.72");
    }

    host_lpn_469: <default("SensorNode")> like INetworkNode {
        @display("p=48.26,22.64");
    }

    host_lpn_470: <default("SensorNode")> like INetworkNode {
        @display("p=73.86,115.66");
    }

    host_lpn_471: <default("SensorNode")> like INetworkNode {
        @display("p=29.23,18.63");
    }

    host_lpn_472: <default("SensorNode")> like INetworkNode {
        @display("p=148.53,21.11");
    }

    host_lpn_473: <default("SensorNode")> like INetworkNode {
        @display("p=38.86,65.87");
    }

    host_lpn_474: <default("SensorNode")> like INetworkNode {
        @display("p=135.46,191.88");
    }

    host_lpn_475: <default("SensorNode")> like INetworkNode {
        @display("p=127.20,124.00");
    }

    host_lpn_476: <default("SensorNode")> like INetworkNode {
        @display("p=31.19,136.71");
    }

    host_lpn_477: <default("SensorNode")> like INetworkNode {
        @display("p=174.23,118.37");
    }

    host_lpn_478: <default("SensorNode")> like INetworkNode {
        @display("p=299.36,89.76");
    }

    host_lpn_479: <default("SensorNode")> like INetworkNode {
        @display("p=180.03,62.56");
    }

    host_lpn_480: <default("SensorNode")> like INetworkNode {
        @display("p=241.12,183.44");
    }

    host_lpn_481: <default("SensorNode")> like INetworkNode {
        @display("p=194.49,109.51");
    }

    host_lpn_482: <default("SensorNode")> like INetworkNode {
        @display("p=256.12,269.06");
    }

    host_lpn_483: <default("SensorNode")> like INetworkNode {
        @display("p=203.22,245.49");
    }

    host_lpn_484: <default("SensorNode")> like INetworkNode {
        @display("p=348.91,147.53");
    }

    host_lpn_485: <default("SensorNode")> like INetworkNode {
        @display("p=335.93,158.51");
    }

    host_lpn_486: <default("SensorNode")> like INetworkNode {
        @display("p=297.44,120.37");
    }

    host_lpn_487: <default("SensorNode")> like INetworkNode {
        @display("p=285.50,136.87");
    }

    host_lpn_488: <default("SensorNode")> like INetworkNode {
        @display("p=250.01,5.96");
    }

    host_lpn_489: <default("SensorNode")> like INetworkNode {
        @display("p=172.98,79.52");
    }

    host_lpn_490: <default("SensorNode")> like INetworkNode {
        @display("p=221.76,40.90");
    }

    host_lpn_491: <default("SensorNode")> like INetworkNode {
        @display("p=310.18,87.15");
    }

    host_lpn_492: <default("SensorNode")> like INetworkNode {
        @display("p=352.93,44.33");
    }

    host_lpn_493: <default("SensorNode")> like INetworkNode {
        @display("p=249.77,37.38");
    }

    host_lpn_494: <default("SensorNode")> like INetworkNode {
        @display("p=207.07,16.08");
    }

    host_lpn_495: <default("SensorNode")> like INetworkNode {
        @display("p=231.23,3.02");
    }

    host_lpn_496: <default("SensorNode")> like INetworkNode {
        @display("p=348.51,126.33");
    }

    host_lpn_497: <default("SensorNode")> like INetworkNode {
        @display("p=332.54,74.06");
    }

    host_lpn_498: <default("SensorNode")> like INetworkNode {
        @display("p=200.75,123.34");
    }

    host_lpn_499: <default("SensorNode")> like INetworkNode {
        @display("p=245.27,50.94");
    }

    host_lpn_500: <default("SensorNode")> like INetworkNode {
        @display("p=131.49,112.49");
    }

}

