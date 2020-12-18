
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_9
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=45.19,130.08");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=92.95,82.05");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=66.64,72.37");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=8.70,74.79");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=17.53,173.51");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=17.62,193.11");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=79.05,230.33");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=1.08,248.35");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=12.06,295.61");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=9.51,222.95");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=45.42,303.12");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=113.24,321.32");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=182.13,274.84");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=193.90,321.29");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=144.51,376.16");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=221.37,370.61");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=234.66,384.59");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=212.45,448.68");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=174.14,426.57");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=259.81,414.94");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=290.76,471.03");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=321.55,494.71");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=327.39,516.30");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=351.74,558.03");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=337.26,510.30");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=279.73,561.50");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=318.60,633.63");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=381.07,667.82");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=398.35,657.21");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=339.60,666.40");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=342.44,653.76");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=313.49,544.61");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=248.77,509.52");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=261.77,473.89");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=306.44,525.29");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=347.85,441.88");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=298.10,432.67");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=307.70,465.71");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=275.72,433.10");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=225.81,249.07");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=255.23,227.72");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=241.39,252.79");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=281.02,213.37");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=339.15,286.93");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=382.04,279.99");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=389.67,298.27");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=329.25,258.93");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=401.07,272.59");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=477.53,274.78");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=11.51,122.50");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=43.42,163.83");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=76.58,104.64");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=132.04,118.95");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=91.34,128.36");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=0.50,179.89");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=67.06,223.75");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=117.16,188.33");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=6.23,150.99");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=35.11,257.36");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=45.14,145.92");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=126.90,357.20");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=107.37,372.51");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=177.38,291.69");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=161.03,322.91");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=102.75,363.56");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=191.45,382.02");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=212.46,461.12");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=234.65,420.73");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=116.27,483.49");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=250.18,346.36");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=331.33,450.66");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=271.78,547.56");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=353.55,451.84");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=316.97,515.26");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=348.55,543.64");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=278.68,576.30");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=296.35,659.00");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=391.25,648.64");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=327.31,655.81");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=315.43,704.79");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=393.49,737.95");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=324.22,549.75");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=222.87,546.43");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=357.97,482.55");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=324.05,526.64");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=300.26,505.19");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=224.57,446.84");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=346.29,478.00");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=289.93,408.19");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=223.59,261.81");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=239.93,208.94");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=240.01,239.68");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=210.58,281.01");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=302.32,311.02");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=330.82,323.26");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=422.05,360.13");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=278.83,196.48");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=454.72,242.53");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=513.55,205.91");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=73.96,83.79");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=45.13,118.59");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=137.92,47.04");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=29.81,80.18");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=37.25,56.77");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=113.20,164.64");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=29.62,192.33");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=63.40,266.90");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=47.88,237.68");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=21.19,343.51");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=60.61,149.49");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=64.28,352.31");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=176.46,355.45");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=200.75,202.36");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=213.74,225.56");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=83.16,382.44");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=199.22,418.41");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=196.38,461.92");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=139.34,415.80");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=116.40,408.41");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=239.71,502.19");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=292.23,534.77");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=362.65,508.05");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=384.27,465.18");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=416.51,593.70");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=416.40,507.28");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=286.26,614.99");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=365.27,675.63");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=419.27,753.34");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=430.25,638.46");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=371.59,643.45");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=335.05,700.97");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=342.34,494.67");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=240.16,451.55");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=283.92,483.19");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=316.23,485.90");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=307.47,494.91");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=309.21,355.99");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=345.40,417.15");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=337.74,438.77");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=146.55,270.03");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=308.03,150.74");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=217.27,332.09");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=358.61,235.01");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=325.08,350.03");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=412.67,340.44");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=379.27,250.56");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=318.68,274.35");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=391.08,231.94");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=499.27,315.66");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=163.57,172.21");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=110.85,106.70");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=125.42,70.77");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=108.07,85.93");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=15.50,92.81");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=43.96,180.54");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=5.53,170.83");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=139.24,288.81");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=15.40,252.04");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=6.17,329.36");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=59.87,210.59");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=13.50,370.86");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=174.99,388.65");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=132.80,208.45");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=201.90,398.13");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=131.69,393.52");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=192.40,336.73");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=172.77,407.76");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=168.58,443.97");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=219.52,404.35");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=260.61,359.87");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=272.25,515.92");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=370.49,565.52");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=248.97,546.87");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=341.08,560.65");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=370.57,514.69");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=202.86,511.87");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=331.89,646.12");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=398.13,717.55");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=401.64,673.04");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=428.51,679.71");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=314.40,662.32");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=305.87,575.59");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=256.76,499.67");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=284.10,459.67");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=324.49,607.87");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=343.17,396.68");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=221.79,480.51");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=367.35,477.93");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=190.40,470.77");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=207.93,318.77");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=157.77,234.33");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=161.90,289.58");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=260.25,258.93");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=319.73,330.55");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=397.80,241.65");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=407.07,319.03");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=313.49,302.49");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=439.41,349.73");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=466.67,209.14");
    }

}

