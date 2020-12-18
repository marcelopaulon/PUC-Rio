
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn8-0
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
        @display("p=180.00,257.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=161.77,317.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=178.13,336.07");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=127.83,387.13");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=121.16,297.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=128.44,343.65");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=138.02,355.73");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=144.60,368.06");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=60.40,395.89");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=19.72,312.98");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=2.99,252.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=18.04,243.44");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=82.59,291.33");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=101.40,281.70");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=147.31,260.00");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=153.01,204.83");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=220.64,250.64");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=125.03,249.19");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=157.94,191.45");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=121.80,152.54");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=80.56,119.06");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=55.95,34.54");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=94.89,72.85");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=106.56,4.67");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=80.04,13.45");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=106.29,232.63");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=103.01,252.83");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=190.59,338.63");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=150.20,385.24");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=126.66,306.30");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=126.52,365.38");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=101.44,365.64");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=53.13,358.15");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=29.30,395.99");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=75.07,249.62");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=37.54,238.91");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=92.67,198.61");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=64.94,322.71");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=194.55,289.35");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=225.85,292.37");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=96.05,208.62");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=164.38,215.07");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=116.97,231.83");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=131.97,282.89");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=112.84,245.14");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=81.17,161.47");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=67.41,66.55");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=34.16,86.76");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=49.34,57.75");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=103.28,83.64");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=188.32,216.90");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=147.74,310.12");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=205.99,351.06");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=81.95,343.34");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=134.34,233.63");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=91.83,353.90");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=177.04,297.79");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=175.68,354.81");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=103.64,322.95");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=104.90,343.40");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=6.54,234.33");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=3.29,197.62");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=91.82,270.12");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=72.14,239.89");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=205.73,290.83");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=207.11,144.71");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=208.74,220.27");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=119.66,281.39");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=151.41,249.23");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=162.41,166.65");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=173.73,128.76");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=37.33,46.05");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=134.39,54.44");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=121.60,35.88");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=55.52,44.81");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=175.29,276.73");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=231.35,327.73");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=250.49,334.98");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=114.54,396.57");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=94.81,306.22");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=197.83,362.64");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=88.53,373.35");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=181.28,391.36");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=31.29,357.82");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=36.28,258.71");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=36.10,195.16");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=17.02,267.82");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=63.88,266.60");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=126.22,268.13");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=183.89,325.49");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=144.35,228.01");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=222.56,188.24");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=165.52,250.02");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=69.67,206.12");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=136.13,216.59");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=84.90,147.68");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=38.09,20.78");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=55.92,116.87");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=85.98,77.46");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=67.54,47.13");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=186.78,159.83");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=152.80,343.46");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=168.27,331.46");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=177.41,370.90");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=177.03,313.40");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=202.87,371.97");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=214.14,333.28");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=155.15,361.10");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=66.05,361.79");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=23.91,277.10");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=43.84,162.15");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=30.56,219.43");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=58.21,254.39");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=11.86,287.67");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=226.69,205.20");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=162.05,300.93");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=189.17,196.56");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=81.44,221.16");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=144.49,195.45");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=203.81,158.09");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=131.97,114.17");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=61.55,102.35");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=50.04,149.53");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=130.26,65.30");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=91.88,13.58");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=169.14,288.00");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=205.25,338.19");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=94.20,331.35");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=150.24,320.63");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=107.39,306.87");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=218.12,350.86");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=119.70,374.62");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=140.89,333.29");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=77.58,397.48");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=45.59,289.74");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=25.04,336.21");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=8.13,215.11");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=136.28,317.89");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=61.66,191.38");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=134.27,244.93");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=140.26,206.02");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=217.30,261.40");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=115.87,190.90");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=182.43,207.95");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=119.97,103.07");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=77.67,90.47");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=101.21,107.64");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=37.25,133.09");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=117.00,15.27");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=67.92,10.94");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=248.62,225.32");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=88.70,314.20");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=99.39,296.19");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=104.83,378.12");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=161.52,234.88");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=62.44,292.35");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=218.17,300.20");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=171.04,389.07");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=41.95,300.99");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=71.61,335.57");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=67.82,226.80");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=11.33,299.21");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=59.46,305.42");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=89.94,252.05");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=77.65,274.40");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=153.64,160.29");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=228.86,242.01");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=83.42,235.03");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=95.38,175.65");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=132.90,157.98");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=5.70,172.19");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=25.71,59.08");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=69.16,115.05");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=27.72,33.49");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=176.02,21.38");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=142.53,286.89");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=169.95,342.32");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=236.44,275.23");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=72.63,377.19");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=117.08,261.75");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=121.93,327.10");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=46.61,343.11");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=189.75,372.83");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=14.19,357.94");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=39.72,332.38");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=65.22,282.44");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=71.01,307.24");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=70.12,216.15");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=82.36,324.36");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=213.93,208.70");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=88.27,189.43");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=262.89,273.06");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=105.66,158.13");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=140.68,164.65");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=129.69,143.28");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=131.44,169.01");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=11.48,18.10");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=93.28,42.49");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=152.47,63.14");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=161.26,27.56");
    }

}

