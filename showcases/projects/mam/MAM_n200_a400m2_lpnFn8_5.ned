
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_5
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
        @display("p=96.30,348.78");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=81.26,373.73");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=119.49,373.69");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=136.53,351.08");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=228.25,371.79");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=240.59,357.86");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=224.15,343.71");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=240.47,394.19");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=254.82,312.62");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=338.10,281.99");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=264.80,223.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=244.04,242.44");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=195.86,237.34");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=181.74,263.91");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=184.50,253.43");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=171.36,251.50");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=160.81,214.52");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=163.47,237.81");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=92.44,174.26");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=137.98,93.85");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=111.30,135.33");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=168.73,180.34");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=136.89,132.86");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=138.82,69.64");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=65.66,324.71");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=93.75,364.83");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=132.38,366.55");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=190.73,394.00");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=149.70,309.18");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=197.01,281.94");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=285.47,373.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=277.23,349.69");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=219.72,382.34");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=261.86,332.02");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=273.40,268.55");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=316.97,221.78");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=277.07,251.14");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=201.81,266.48");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=134.68,327.77");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=162.37,277.16");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=200.47,198.59");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=110.42,291.58");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=197.03,148.20");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=180.87,200.73");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=154.08,96.48");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=125.78,135.77");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=180.70,180.17");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=124.59,74.03");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=78.48,107.41");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=147.17,230.41");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=77.32,343.00");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=82.19,387.32");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=114.00,392.49");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=145.03,383.51");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=227.24,361.30");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=224.68,313.39");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=158.55,319.29");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=170.16,326.49");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=189.99,341.47");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=371.59,224.48");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=263.56,209.07");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=260.30,290.61");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=151.48,251.81");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=153.79,358.48");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=226.61,256.81");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=230.59,171.44");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=171.82,229.50");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=127.52,151.63");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=118.00,89.97");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=55.32,58.00");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=100.99,210.50");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=124.40,259.79");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=175.37,166.89");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=172.41,75.99");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=67.52,291.92");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=50.46,343.20");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=36.85,307.21");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=168.42,353.90");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=156.00,370.98");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=261.52,388.52");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=249.87,371.30");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=234.49,337.38");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=182.63,388.04");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=251.09,301.39");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=355.35,217.24");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=202.97,230.11");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=311.25,204.68");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=195.46,323.65");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=181.20,240.34");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=172.19,289.63");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=149.32,200.16");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=217.11,231.73");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=140.49,187.67");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=129.42,99.72");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=93.88,14.56");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=83.06,151.10");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=98.26,183.15");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=157.23,150.53");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=210.96,128.67");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=136.81,277.95");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=76.16,316.56");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=94.73,325.27");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=149.44,395.02");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=72.38,361.24");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=203.98,290.78");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=224.37,283.23");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=322.85,350.31");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=306.88,357.41");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=262.93,320.99");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=396.45,334.31");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=349.69,234.11");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=305.26,301.79");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=212.88,222.21");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=209.80,255.27");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=91.72,286.94");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=162.99,267.15");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=168.19,149.57");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=117.82,158.69");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=141.37,245.00");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=83.81,94.67");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=58.32,140.95");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=195.16,132.50");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=147.35,117.08");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=143.46,52.31");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=130.38,301.65");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=106.58,257.34");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=54.30,375.97");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=35.10,373.42");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=161.36,297.75");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=199.02,377.63");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=295.65,370.26");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=231.67,268.85");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=216.27,320.51");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=232.41,301.91");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=372.38,214.32");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=214.59,245.70");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=285.35,226.74");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=210.82,279.48");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=110.69,239.61");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=150.75,220.93");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=153.44,164.43");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=181.60,146.76");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=197.62,249.31");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=36.25,171.81");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=91.63,108.90");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=107.39,153.94");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=126.33,225.40");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=159.82,190.56");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=71.92,16.82");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=140.82,261.74");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=2.83,346.48");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=36.23,390.33");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=29.21,358.42");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=106.47,331.29");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=205.52,362.87");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=255.54,361.91");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=253.82,338.93");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=166.77,396.09");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=250.01,350.24");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=393.73,317.93");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=324.43,143.70");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=276.61,176.39");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=117.29,176.02");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=187.11,276.26");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=197.67,306.37");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=190.82,295.82");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=134.29,235.09");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=105.22,272.75");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=62.09,121.28");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=96.78,150.07");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=85.17,224.60");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=127.08,204.74");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=102.11,57.47");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=81.03,74.22");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=116.83,317.08");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=180.08,347.59");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=55.13,304.39");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=40.89,331.29");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=216.48,355.84");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=240.89,383.50");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=256.24,398.73");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=267.22,344.83");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=273.88,396.01");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=293.63,380.43");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=349.15,276.92");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=255.93,215.87");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=228.16,191.42");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=177.02,219.98");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=179.07,332.72");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=115.21,270.93");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=258.73,269.08");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=184.46,130.73");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=84.00,293.55");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=21.00,243.11");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=196.45,112.31");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=197.22,178.92");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=111.73,213.69");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=136.70,165.80");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=69.31,135.01");
    }

}

