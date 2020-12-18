
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn8-3
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
        @display("p=63.00,363.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=58.17,338.57");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=89.56,347.73");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=167.83,325.97");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=176.86,350.37");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=201.32,348.79");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=148.26,353.82");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=191.04,371.72");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=148.19,296.09");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=117.98,289.59");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=130.68,298.96");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=175.05,262.09");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=179.73,306.38");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=227.58,322.21");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=101.97,370.39");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=45.18,316.61");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=25.76,308.83");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=54.88,382.31");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=78.31,368.24");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=62.64,349.22");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=116.83,345.04");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=108.51,330.77");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=31.80,273.24");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=9.09,329.57");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=73.69,353.03");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=104.64,359.29");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=58.07,299.56");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=72.45,392.13");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=246.29,345.31");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=151.48,374.93");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=190.84,390.98");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=154.38,263.70");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=283.98,351.11");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=94.20,247.78");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=70.97,299.08");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=84.68,330.27");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=196.24,291.12");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=238.53,295.13");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=294.81,384.29");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=159.76,390.39");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=24.67,289.89");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=73.56,264.89");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=117.00,312.75");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=65.03,384.83");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=22.28,263.91");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=160.20,344.87");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=143.42,338.77");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=25.34,217.04");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=87.01,386.08");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=43.36,334.88");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=43.80,275.38");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=4.49,376.92");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=132.51,347.82");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=215.76,258.84");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=146.91,319.12");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=234.76,396.03");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=174.43,386.82");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=187.08,357.98");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=220.59,247.35");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=110.39,320.80");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=77.82,276.79");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=174.65,249.71");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=119.79,356.19");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=242.47,283.07");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=115.75,393.82");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=31.71,343.45");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=14.57,253.53");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=24.71,375.52");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=44.89,388.85");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=66.12,314.20");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=162.07,301.96");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=50.01,346.84");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=60.36,220.88");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=43.56,365.01");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=102.10,381.56");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=59.46,324.17");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=123.16,269.50");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=13.56,341.88");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=188.77,236.59");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=218.29,348.52");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=202.45,312.86");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=232.17,335.79");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=221.11,393.74");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=170.67,273.63");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=30.81,325.73");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=176.17,368.37");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=226.83,198.78");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=102.83,268.91");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=210.37,298.64");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=89.97,368.88");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=15.37,362.67");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=47.25,300.85");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=91.68,397.87");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=71.77,338.15");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=7.83,352.44");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=129.37,337.18");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=96.24,339.20");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=9.49,308.99");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=82.21,309.20");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=99.96,297.15");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=121.89,367.83");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=59.57,263.82");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=102.67,391.97");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=141.08,289.02");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=177.41,319.00");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=193.52,333.42");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=162.37,375.08");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=171.30,294.32");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=134.81,264.36");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=120.04,302.69");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=229.72,288.44");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=203.48,277.43");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=226.55,361.99");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=221.07,333.66");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=102.74,279.64");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=84.65,359.22");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=3.68,299.17");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=92.78,316.75");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=74.35,379.01");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=51.82,289.19");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=135.17,275.09");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=91.45,234.81");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=102.89,224.01");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=39.51,375.06");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=127.48,317.49");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=132.73,370.14");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=86.59,268.15");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=167.37,361.44");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=128.36,282.45");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=140.36,391.24");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=208.73,324.74");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=155.74,364.15");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=216.62,360.04");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=191.36,322.60");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=161.09,217.75");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=143.70,306.58");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=160.89,241.02");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=232.07,253.96");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=288.76,253.08");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=149.43,329.95");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=1.53,243.57");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=101.98,307.63");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=86.62,300.15");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=57.50,372.63");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=64.32,284.80");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=66.10,273.96");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=114.60,253.04");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=96.28,206.36");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=22.41,241.30");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=0.96,318.81");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=40.27,353.46");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=118.51,333.66");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=117.78,383.98");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=239.00,266.38");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=233.51,374.38");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=185.17,283.26");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=201.60,372.30");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=211.97,382.49");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=184.35,223.37");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=146.63,272.34");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=58.96,250.60");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=113.32,216.71");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=265.90,277.96");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=220.39,314.53");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=137.32,358.66");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=19.18,398.03");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=31.52,359.14");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=31.16,389.50");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=21.48,352.15");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=59.60,397.72");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=182.68,377.63");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=80.71,287.89");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=43.87,227.40");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=48.54,257.67");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=33.66,301.92");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=4.60,286.03");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=93.09,286.34");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=129.94,383.80");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=263.26,342.28");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=207.30,336.31");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=274.44,376.77");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=187.05,295.54");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=217.68,291.00");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=182.27,329.64");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=128.48,244.23");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=130.98,233.44");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=141.77,225.86");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=171.98,239.63");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=278.55,306.55");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=129.25,395.75");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=76.29,320.58");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=28.42,255.65");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=14.29,299.01");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=136.41,328.79");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=18.68,385.53");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=150.40,393.92");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=143.15,253.90");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=11.66,277.86");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=15.94,316.84");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=53.19,357.29");
    }

}

