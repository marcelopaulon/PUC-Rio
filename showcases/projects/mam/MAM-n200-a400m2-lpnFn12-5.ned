
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn12-5
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
        @display("p=6.00,388.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=38.13,315.41");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=60.84,293.70");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=142.62,318.26");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=169.84,278.24");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=164.99,291.78");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=245.22,254.96");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=243.39,284.42");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=222.15,251.40");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=153.89,243.67");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=111.87,285.95");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=207.12,264.63");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=162.92,191.48");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=222.68,202.93");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=188.31,181.17");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=177.72,135.21");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=180.67,52.14");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=89.64,375.15");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=92.79,296.93");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=79.63,290.48");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=121.93,394.96");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=250.52,269.03");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=137.55,234.44");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=221.29,231.89");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=307.32,323.83");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=218.64,287.95");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=181.20,208.29");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=91.21,256.61");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=121.68,281.15");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=163.07,223.95");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=140.13,201.90");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=224.19,94.12");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=218.32,63.73");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=166.60,11.82");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=13.11,338.53");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=32.11,302.20");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=95.86,316.09");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=131.24,301.31");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=226.96,270.81");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=152.98,272.93");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=176.47,319.27");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=252.12,290.30");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=204.30,296.78");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=185.42,234.29");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=89.24,281.95");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=203.08,282.94");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=95.75,244.36");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=224.01,116.20");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=196.79,157.99");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=150.67,103.09");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=100.12,17.05");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=34.07,387.49");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=60.96,363.46");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=67.94,323.36");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=119.43,225.37");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=110.37,220.71");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=210.45,229.92");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=293.91,296.80");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=214.00,276.32");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=308.19,205.91");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=136.12,212.90");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=108.81,266.03");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=159.10,255.68");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=188.28,116.38");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=260.29,233.57");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=268.44,185.97");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=106.74,174.95");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=240.05,104.52");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=36.68,327.86");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=26.95,225.83");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=82.51,362.87");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=192.92,343.87");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=165.91,305.50");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=131.81,355.87");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=235.36,214.36");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=255.27,278.09");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=292.31,264.45");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=179.67,274.85");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=130.13,286.83");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=115.97,295.61");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=205.89,153.09");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=204.77,175.38");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=214.71,139.27");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=170.59,214.66");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=234.29,119.30");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=18.43,376.80");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=18.92,250.98");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=52.70,313.30");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=150.97,327.23");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=158.78,209.13");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=234.54,236.85");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=293.46,200.01");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=294.88,344.99");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=312.66,273.17");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=148.93,291.37");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=65.82,265.57");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=219.93,216.50");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=240.19,138.10");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=282.82,218.93");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=170.79,127.76");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=177.08,164.64");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=175.12,64.16");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=93.41,393.89");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=27.04,262.81");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=55.26,264.70");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=116.17,339.99");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=192.12,294.07");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=86.56,328.45");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=270.47,286.36");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=206.46,203.36");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=191.06,222.05");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=156.89,155.39");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=145.02,307.40");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=199.10,250.74");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=146.50,193.78");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=249.57,227.25");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=260.21,199.19");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=274.59,145.50");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=256.30,46.74");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=31.54,341.73");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=21.53,311.41");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=64.86,383.32");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=133.28,271.57");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=119.08,314.32");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=221.89,343.23");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=297.81,316.36");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=262.64,372.19");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=272.66,245.94");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=188.55,279.61");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=81.50,263.64");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=220.30,316.63");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=127.42,183.40");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=143.56,178.64");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=110.38,128.58");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=194.74,203.32");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=233.36,8.81");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=25.48,359.94");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=48.24,349.74");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=62.81,303.93");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=185.48,265.79");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=180.73,287.66");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=246.71,244.89");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=207.54,313.06");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=280.32,289.38");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=128.11,262.59");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=175.55,232.19");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=153.61,372.72");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=221.78,175.71");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=143.23,262.16");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=192.10,135.89");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=254.45,158.86");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=201.90,142.84");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=198.56,19.10");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=23.33,392.54");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=35.25,254.98");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=118.03,365.89");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=141.90,382.87");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=75.30,280.23");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=102.26,353.56");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=211.16,162.90");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=304.04,256.45");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=244.45,306.94");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=196.99,323.15");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=138.19,293.16");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=170.26,343.97");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=172.52,178.47");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=247.72,206.09");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=248.11,182.15");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=148.37,150.08");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=211.45,19.48");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=39.49,295.15");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=16.04,349.50");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=37.20,235.99");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=178.10,395.44");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=167.78,265.33");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=124.79,213.53");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=214.21,332.15");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=238.47,336.81");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=191.85,166.79");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=119.79,152.95");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=74.00,248.95");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=258.21,317.76");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=133.76,139.28");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=293.23,244.34");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=103.11,207.82");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=210.34,186.04");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=164.10,100.88");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=25.10,332.44");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=20.96,279.69");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=47.58,288.89");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=56.49,335.83");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=168.83,244.86");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=177.64,309.06");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=305.80,285.70");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=164.73,325.51");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=217.60,263.15");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=133.55,168.77");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=172.21,255.38");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=259.04,345.86");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=84.61,228.63");
    }

}

