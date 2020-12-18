
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_5
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
        @display("p=124.25,289.11");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=82.67,287.02");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=97.75,289.83");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=115.92,259.50");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=28.39,246.35");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=82.05,221.56");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=74.14,232.34");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=64.39,281.11");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=93.87,329.21");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=134.76,306.49");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=206.15,310.66");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=163.71,352.03");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=71.54,382.60");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=105.18,384.07");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=140.55,352.25");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=160.27,324.39");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=200.02,301.42");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=224.65,291.43");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=272.59,347.00");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=251.90,368.35");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=231.82,353.03");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=153.12,300.79");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=228.08,323.01");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=294.81,395.83");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=258.76,397.80");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=256.32,342.56");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=236.02,380.57");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=186.54,368.83");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=178.92,317.05");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=249.10,308.69");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=241.81,318.29");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=215.82,332.85");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=247.88,357.01");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=263.04,355.00");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=343.56,338.35");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=340.17,318.32");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=281.43,262.16");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=323.46,216.58");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=337.48,201.56");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=287.48,162.40");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=262.60,178.52");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=322.39,106.28");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=309.52,87.67");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=307.64,69.43");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=255.20,56.06");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=315.24,76.05");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=321.47,86.97");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=389.93,118.39");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=390.25,153.74");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=62.04,309.65");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=110.86,340.54");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=60.40,258.14");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=140.74,330.22");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=197.90,242.04");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=11.05,199.55");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=177.44,197.13");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=45.83,256.07");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=121.82,205.32");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=34.64,394.64");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=170.14,297.11");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=270.44,263.40");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=152.03,313.96");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=81.43,395.64");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=97.63,343.16");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=156.56,371.85");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=122.90,309.53");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=240.09,295.50");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=218.49,278.46");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=236.38,393.40");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=246.62,275.77");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=248.68,391.52");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=135.13,320.34");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=300.40,349.23");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=323.18,331.22");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=289.37,375.77");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=291.21,269.02");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=215.04,366.90");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=172.21,366.43");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=176.05,328.51");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=253.93,329.53");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=260.84,382.68");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=214.64,352.22");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=291.42,315.50");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=275.18,331.49");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=293.49,290.79");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=287.65,329.76");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=267.80,242.87");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=249.26,156.86");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=353.23,172.97");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=303.47,115.38");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=207.07,145.52");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=296.77,99.68");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=244.47,119.99");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=373.23,25.00");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=191.06,16.99");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=315.13,27.45");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=345.74,94.08");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=354.39,66.65");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=353.43,220.67");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=158.52,260.68");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=137.00,241.72");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=38.87,236.39");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=116.15,278.61");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=150.72,203.45");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=24.99,259.65");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=48.70,286.21");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=75.58,246.31");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=54.34,323.21");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=25.25,301.08");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=73.27,345.81");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=127.01,274.15");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=203.83,277.75");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=45.97,329.30");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=81.11,358.97");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=186.21,325.05");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=205.97,373.03");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=257.59,253.02");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=223.59,266.50");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=284.97,341.44");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=182.13,394.91");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=185.68,277.43");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=167.57,386.21");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=145.55,339.17");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=335.45,379.54");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=305.33,392.64");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=245.69,338.93");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=265.89,291.79");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=164.87,396.83");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=202.07,320.00");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=306.49,244.89");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=177.87,265.04");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=216.89,245.98");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=184.99,350.40");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=345.46,381.08");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=383.33,303.30");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=390.04,271.34");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=258.63,205.11");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=324.89,183.46");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=390.88,198.11");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=258.95,160.09");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=275.48,181.02");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=355.62,110.18");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=272.84,56.30");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=282.66,102.96");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=249.04,84.99");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=248.37,97.19");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=321.98,157.33");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=394.38,210.66");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=388.15,142.77");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=91.28,238.60");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=121.09,381.01");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=92.33,273.08");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=14.02,268.75");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=97.59,247.44");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=96.39,225.06");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=105.08,219.19");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=77.27,200.04");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=95.64,318.21");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=77.93,330.69");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=199.96,253.21");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=202.23,333.14");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=163.61,306.39");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=29.50,365.84");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=116.62,395.94");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=121.34,353.51");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=160.73,342.49");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=240.37,241.73");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=223.52,383.89");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=198.29,394.47");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=277.82,374.74");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=231.38,332.49");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=75.96,305.80");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=262.43,230.94");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=305.68,362.70");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=216.94,392.83");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=302.55,332.58");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=321.76,355.59");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=138.20,362.79");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=187.71,311.40");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=273.58,315.02");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=269.61,362.67");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=176.02,250.15");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=333.45,346.12");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=333.54,358.01");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=334.56,285.41");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=349.37,230.41");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=307.44,261.25");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=380.20,267.07");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=312.91,222.19");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=231.65,158.98");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=256.24,148.44");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=377.87,72.80");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=380.72,97.63");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=388.86,60.65");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=268.92,19.95");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=342.28,16.97");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=294.52,134.19");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=361.59,194.36");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=312.16,146.97");
    }

}

