
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_2
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
        @display("p=72.75,325.70");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=102.35,289.13");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=104.02,375.79");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=56.39,397.77");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=65.12,391.96");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=26.50,389.49");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=31.78,368.97");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=42.46,385.29");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=96.40,312.64");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=114.97,295.72");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=151.24,269.52");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=122.66,351.07");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=140.36,361.72");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=192.24,353.58");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=198.64,297.12");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=225.42,270.21");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=229.26,250.73");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=254.48,224.39");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=331.01,162.23");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=314.68,199.47");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=267.20,136.92");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=305.31,144.64");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=276.65,187.25");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=322.54,136.67");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=193.20,316.47");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=83.17,317.85");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=185.80,306.65");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=98.39,388.39");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=60.09,368.95");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=159.06,383.13");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=94.51,337.82");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=10.18,342.88");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=73.04,362.04");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=93.82,253.60");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=114.31,276.86");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=133.93,285.25");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=122.54,286.13");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=47.35,355.45");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=207.53,317.06");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=129.82,256.32");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=184.06,258.55");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=222.81,214.62");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=317.63,170.50");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=288.90,109.18");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=273.60,285.02");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=215.40,147.06");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=336.57,146.45");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=266.87,107.91");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=344.79,110.69");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=114.95,331.26");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=95.13,242.62");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=9.60,320.85");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=111.54,384.03");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=21.53,338.78");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=114.27,361.30");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=55.07,382.26");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=1.82,336.48");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=13.84,397.41");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=58.88,222.76");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=36.84,265.48");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=167.09,350.47");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=114.13,342.45");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=146.68,385.72");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=244.95,274.21");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=189.55,381.29");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=238.98,209.51");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=158.22,229.80");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=186.69,216.96");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=300.39,111.88");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=338.46,189.35");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=178.49,113.87");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=356.99,118.87");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=324.41,272.78");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=361.07,45.53");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=170.38,326.20");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=113.32,243.06");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=64.58,231.56");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=199.07,395.74");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=74.55,372.88");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=129.85,393.34");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=32.34,380.62");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=30.88,314.08");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=76.11,399.91");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=52.67,305.31");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=166.64,375.89");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=201.54,221.67");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=155.28,350.67");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=163.30,334.70");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=183.70,340.94");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=218.40,287.14");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=151.37,283.26");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=243.17,232.80");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=255.30,239.75");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=384.96,180.43");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=294.49,196.56");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=194.73,138.38");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=358.65,163.78");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=348.30,215.09");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=278.26,79.54");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=112.71,205.36");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=50.63,291.83");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=150.01,309.81");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=160.18,315.06");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=57.13,330.45");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=19.65,314.61");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=58.27,347.44");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=25.42,358.29");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=32.85,338.25");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=71.06,310.29");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=97.62,326.11");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=160.06,263.29");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=157.84,303.01");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=163.94,279.11");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=279.06,335.63");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=171.05,232.12");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=271.76,301.53");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=291.30,239.55");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=281.94,278.19");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=252.60,200.92");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=354.60,135.85");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=309.73,129.37");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=341.34,165.36");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=273.60,175.13");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=241.92,111.09");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=61.68,314.10");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=106.80,314.20");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=79.86,284.03");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=81.43,387.09");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=84.50,376.01");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=125.97,366.54");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=35.16,323.27");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=47.20,323.84");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=27.14,301.86");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=66.80,270.15");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=135.06,337.21");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=139.50,262.48");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=183.81,392.36");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=131.45,376.39");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=231.55,288.10");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=262.05,267.83");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=266.64,212.04");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=234.97,168.28");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=277.44,211.10");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=314.34,151.38");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=220.59,167.40");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=208.02,111.11");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=288.53,135.43");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=330.17,241.40");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=335.77,134.81");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=75.43,335.57");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=124.07,309.26");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=142.05,226.84");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=95.16,366.67");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=12.92,367.50");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=40.32,309.81");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=42.67,366.86");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=65.78,378.30");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=10.14,387.67");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=78.06,247.83");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=175.11,274.27");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=159.97,211.84");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=210.45,333.10");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=181.06,352.07");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=185.73,365.62");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=210.95,392.29");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=221.84,348.25");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=262.09,322.54");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=275.55,228.06");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=299.30,218.97");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=376.53,122.58");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=323.10,110.40");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=373.17,164.38");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=290.18,225.07");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=345.32,230.98");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=16.76,261.53");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=36.11,240.12");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=83.69,269.03");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=76.24,293.66");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=1.53,399.81");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=70.08,346.96");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=42.39,334.32");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=89.76,299.48");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=8.05,301.04");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=183.60,320.51");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=125.40,219.72");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=170.97,187.69");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=107.67,351.04");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=233.94,363.36");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=214.31,376.06");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=220.13,254.91");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=266.80,246.57");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=232.77,236.36");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=256.19,129.80");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=365.68,195.05");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=378.71,231.62");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=237.70,98.42");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=290.33,92.59");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=256.48,167.56");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=386.77,127.43");
    }

}

