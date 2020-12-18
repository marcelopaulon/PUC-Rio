
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_0
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
        @display("p=88.31,370.55");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=114.64,380.39");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=99.51,360.24");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=163.61,380.35");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=228.16,338.22");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=173.48,328.82");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=173.98,341.16");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=83.53,345.78");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=110.62,251.65");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=173.76,281.46");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=184.94,268.78");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=278.09,244.73");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=279.78,300.55");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=229.34,231.96");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=204.20,308.06");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=185.86,317.90");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=245.24,294.63");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=307.65,221.04");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=291.31,208.84");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=273.37,217.11");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=260.48,182.78");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=262.41,195.71");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=242.76,208.56");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=250.85,172.64");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=316.83,190.01");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=306.44,278.24");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=296.34,280.04");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=376.76,330.18");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=357.68,350.98");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=366.46,262.92");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=350.23,211.47");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=260.32,210.27");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=214.86,230.10");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=156.40,246.89");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=116.63,226.00");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=110.37,202.98");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=73.30,235.20");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=109.34,191.51");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=120.06,260.88");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=64.54,275.72");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=113.91,291.25");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=138.93,282.63");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=202.20,240.79");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=208.46,256.60");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=146.01,230.43");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=117.38,335.98");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=79.57,326.41");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=142.21,320.68");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=183.94,297.06");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=153.00,353.76");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=137.25,352.66");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=31.57,363.50");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=144.95,340.74");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=177.96,376.15");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=265.76,333.43");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=101.67,371.48");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=217.27,341.25");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=36.33,301.59");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=99.21,314.05");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=164.74,271.30");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=154.02,331.86");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=360.38,234.58");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=197.53,330.25");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=238.43,284.35");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=242.09,373.01");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=158.72,320.90");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=251.20,281.61");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=326.73,202.50");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=282.50,222.33");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=292.44,191.93");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=213.76,175.20");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=331.36,241.06");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=240.93,268.01");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=186.55,172.35");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=343.75,187.43");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=276.66,333.78");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=247.17,229.08");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=305.10,316.18");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=336.35,325.39");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=367.82,167.63");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=339.99,172.59");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=181.30,240.60");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=272.28,261.78");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=149.95,261.77");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=49.24,183.08");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=60.43,183.64");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=117.31,170.86");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=78.56,247.60");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=194.47,304.18");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=23.65,349.38");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=46.07,232.11");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=70.26,333.26");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=238.58,189.22");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=173.32,220.43");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=221.76,263.95");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=125.83,327.45");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=15.53,303.43");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=107.66,340.66");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=241.45,351.91");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=89.24,300.72");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=150.46,366.15");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=123.24,386.81");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=132.57,392.40");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=232.70,395.78");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=213.47,392.14");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=218.15,305.65");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=135.87,303.43");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=2.55,395.07");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=98.53,229.98");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=152.15,293.22");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=180.06,309.19");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=345.77,264.52");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=332.77,215.99");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=264.84,234.76");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=231.22,328.07");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=168.88,299.25");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=233.62,294.05");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=348.14,306.88");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=272.74,188.79");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=261.08,165.28");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=285.20,156.72");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=272.19,203.59");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=176.88,149.46");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=293.78,130.46");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=307.84,200.81");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=387.56,248.45");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=326.89,306.01");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=356.07,331.32");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=354.49,384.69");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=329.66,341.55");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=373.53,231.54");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=239.36,239.11");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=165.64,159.58");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=167.50,208.47");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=23.71,253.59");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=143.17,140.60");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=90.59,331.88");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=31.42,222.00");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=195.14,291.52");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=126.00,316.22");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=67.39,290.49");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=169.10,319.34");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=215.98,246.01");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=172.24,235.02");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=158.99,229.83");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=144.50,381.83");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=89.49,358.83");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=70.18,310.14");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=189.82,251.46");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=102.86,386.24");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=64.59,373.30");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=176.22,354.90");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=8.68,386.26");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=118.52,365.17");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=251.66,342.50");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=218.31,293.04");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=244.53,399.61");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=72.48,263.60");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=46.49,211.58");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=128.51,232.17");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=134.42,264.69");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=347.99,248.63");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=297.02,322.55");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=145.33,205.12");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=192.16,241.55");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=104.30,276.28");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=235.27,304.07");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=290.79,228.63");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=218.33,191.62");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=245.06,219.10");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=184.06,206.54");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=291.73,173.87");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=315.97,177.62");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=260.56,151.70");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=369.10,250.13");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=379.03,300.86");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=325.57,283.33");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=337.27,381.34");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=395.94,304.91");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=355.07,276.03");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=395.18,274.82");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=244.83,151.77");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=292.52,255.45");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=131.83,336.56");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=141.41,248.19");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=103.71,167.60");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=36.65,194.60");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=198.04,178.48");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=122.94,273.45");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=11.95,284.22");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=107.40,322.03");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=111.97,305.01");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=216.69,214.88");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=204.78,267.12");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=167.02,181.71");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=191.40,379.36");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=24.24,332.32");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=58.29,352.26");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=253.48,269.79");
    }

}

