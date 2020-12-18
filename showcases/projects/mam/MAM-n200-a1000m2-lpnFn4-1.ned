
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn4-1
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
        @display("p=202.00,71.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=247.50,82.22");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=159.49,115.35");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=123.66,34.51");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=127.57,93.71");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=151.36,154.49");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=74.16,173.30");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=68.76,207.06");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=94.62,206.84");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=173.47,186.77");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=191.47,204.75");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=189.12,157.45");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=196.90,172.40");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=112.81,195.11");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=120.86,258.40");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=178.70,231.19");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=106.59,224.45");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=15.72,240.92");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=54.88,266.14");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=63.29,360.07");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=68.72,372.24");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=80.50,385.50");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=107.57,416.11");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=166.87,466.92");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=250.74,498.77");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=240.79,495.89");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=238.47,509.23");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=280.73,457.94");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=325.08,452.93");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=305.95,531.58");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=288.28,484.79");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=299.18,522.29");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=297.39,614.94");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=315.99,697.66");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=313.01,667.22");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=346.77,761.09");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=316.07,759.55");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=241.59,804.29");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=228.63,804.13");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=183.00,722.79");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=165.33,809.84");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=72.35,814.00");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=118.48,775.64");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=99.59,780.69");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=33.57,794.01");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=51.79,802.45");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=48.90,753.27");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=106.97,683.56");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=44.24,640.49");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=16.61,565.93");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=205.18,26.19");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=192.08,100.29");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=131.24,150.60");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=33.12,48.07");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=122.28,104.64");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=174.18,125.85");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=40.99,147.64");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=40.26,241.48");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=94.07,228.77");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=234.67,114.96");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=221.22,145.57");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=159.86,169.48");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=158.80,128.10");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=35.68,196.94");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=144.59,248.65");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=179.78,322.99");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=155.96,281.29");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=9.11,232.54");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=14.16,309.20");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=19.80,365.69");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=9.45,376.24");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=116.34,458.89");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=52.76,469.28");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=165.56,451.74");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=205.50,502.60");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=221.43,458.99");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=203.26,525.22");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=271.54,448.54");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=362.08,427.52");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=296.01,538.68");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=296.58,471.27");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=296.68,493.78");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=244.51,558.94");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=326.14,698.76");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=355.15,646.03");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=309.62,689.78");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=285.98,702.69");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=269.18,766.25");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=215.94,824.88");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=163.37,713.34");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=161.10,881.26");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=58.38,758.25");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=50.74,828.42");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=104.08,762.04");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=40.20,865.09");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=142.74,798.09");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=96.54,732.93");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=101.55,706.89");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=32.17,599.14");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=22.74,593.52");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=262.78,46.88");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=198.97,129.91");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=188.81,114.38");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=162.05,35.60");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=58.84,134.08");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=163.27,181.93");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=80.65,239.11");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=75.36,214.83");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=91.36,181.62");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=184.23,147.56");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=173.05,144.52");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=255.04,135.49");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=231.19,257.91");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=177.23,244.99");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=167.69,259.03");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=152.86,221.44");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=109.06,249.72");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=0.37,300.00");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=108.83,275.14");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=55.97,350.62");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=157.46,357.44");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=19.63,411.65");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=54.91,408.36");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=210.16,512.52");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=182.54,460.26");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=332.75,503.39");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=280.41,492.36");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=297.75,460.57");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=315.24,444.36");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=252.33,550.74");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=274.11,529.54");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=265.04,485.49");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=287.15,596.50");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=237.05,744.43");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=358.40,595.48");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=332.72,790.72");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=338.98,770.35");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=152.74,786.79");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=278.64,730.50");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=176.50,693.75");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=190.51,769.18");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=1.70,853.50");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=84.05,857.32");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=68.69,869.83");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=93.94,845.16");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=60.52,808.49");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=35.25,780.54");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=41.90,703.87");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=60.14,543.45");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=45.64,571.32");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=234.73,99.28");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=283.98,74.04");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=199.09,49.59");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=161.35,61.63");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=117.89,153.61");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=76.85,199.57");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=105.78,186.63");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=73.92,250.54");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=93.62,121.50");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=148.87,194.56");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=246.31,286.92");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=149.00,92.42");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=204.61,158.04");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=126.05,172.38");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=103.80,294.48");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=141.38,182.55");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=154.59,299.56");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=52.86,300.44");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=45.29,276.91");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=140.38,396.65");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=33.98,422.67");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=5.38,394.12");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=116.08,448.47");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=213.67,400.03");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=285.44,537.48");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=287.88,465.12");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=293.73,448.06");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=282.39,414.13");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=283.95,430.15");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=259.39,605.43");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=339.40,439.58");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=315.83,477.79");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=298.01,601.89");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=346.35,664.97");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=347.18,744.29");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=372.52,686.16");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=299.67,744.16");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=307.91,786.02");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=260.31,854.82");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=226.13,665.56");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=186.05,856.25");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=124.94,730.03");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=139.93,808.68");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=103.63,803.28");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=8.20,882.70");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=66.85,827.34");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=89.80,826.73");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=155.00,701.83");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=97.16,570.22");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=52.65,598.51");
    }

}

