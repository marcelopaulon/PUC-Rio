
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn8_9
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=159.25,88.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=168.54,161.83");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=192.36,253.88");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=239.14,255.38");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=177.70,265.90");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=212.41,251.71");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=200.78,273.41");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=228.20,259.69");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=254.46,327.95");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=310.59,347.31");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=311.01,366.33");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=283.71,284.82");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=192.63,293.78");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=168.27,286.10");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=246.53,320.04");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=249.85,266.07");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=311.03,323.78");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=226.32,374.27");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=234.59,388.48");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=261.32,292.48");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=274.10,357.91");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=335.66,285.02");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=321.97,297.53");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=326.34,396.63");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=76.87,12.05");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=124.05,150.51");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=157.11,164.49");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=165.20,247.65");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=322.73,307.52");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=170.40,274.09");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=214.56,306.65");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=234.33,308.40");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=179.71,327.69");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=287.92,329.76");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=365.01,266.24");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=340.65,319.55");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=255.26,224.06");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=103.45,290.26");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=155.03,298.38");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=267.33,272.69");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=213.55,273.39");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=358.10,335.57");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=203.85,346.39");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=173.88,380.66");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=327.96,321.17");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=266.11,365.14");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=382.00,231.21");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=347.52,293.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=278.80,370.83");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=137.84,98.85");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=202.90,41.78");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=202.46,101.22");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=149.16,214.00");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=251.98,160.81");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=178.76,221.11");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=232.85,162.49");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=212.18,238.98");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=220.94,344.17");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=251.59,354.23");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=292.54,388.83");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=324.88,377.09");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=244.33,288.06");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=153.82,268.10");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=139.41,240.12");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=240.96,379.80");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=266.25,184.85");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=339.45,358.98");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=218.83,365.50");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=209.05,335.15");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=254.58,279.50");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=350.52,386.14");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=302.50,224.36");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=399.48,345.39");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=333.73,305.16");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=131.99,188.31");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=152.46,130.98");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=164.02,259.78");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=122.98,320.49");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=213.65,216.10");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=187.86,303.37");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=266.84,224.27");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=128.23,237.99");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=167.19,220.20");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=285.45,234.73");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=394.17,354.04");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=243.23,361.72");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=265.71,304.63");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=235.36,331.53");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=143.86,252.25");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=203.42,305.62");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=228.01,283.84");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=371.87,366.73");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=209.29,397.21");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=153.23,378.50");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=300.02,340.01");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=300.47,364.83");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=371.29,348.08");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=341.50,218.87");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=335.42,372.14");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=86.63,95.37");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=96.62,80.85");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=106.64,181.16");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=237.47,227.00");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=187.07,208.99");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=179.03,255.67");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=157.42,192.28");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=189.28,360.63");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=298.36,244.99");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=309.27,310.02");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=320.91,337.38");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=250.12,301.54");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=281.95,309.78");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=171.70,299.76");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=132.51,342.85");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=203.01,382.81");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=211.24,323.10");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=333.87,348.56");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=221.21,385.90");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=289.64,366.32");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=223.97,228.21");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=278.03,266.87");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=319.55,273.97");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=293.05,352.25");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=288.33,340.05");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=96.11,110.13");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=162.13,64.98");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=133.87,174.92");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=159.10,314.94");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=169.25,326.07");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=126.73,256.40");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=183.94,285.43");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=244.39,202.66");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=199.15,328.31");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=296.89,257.70");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=274.93,389.47");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=334.07,387.94");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=296.11,293.52");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=139.95,270.22");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=130.64,296.07");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=237.29,345.85");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=261.28,247.01");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=300.10,326.13");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=303.09,375.69");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=255.88,380.12");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=284.06,214.38");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=271.76,333.09");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=296.95,279.40");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=378.75,286.49");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=369.76,387.31");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=76.37,51.82");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=127.21,134.01");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=180.97,163.29");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=178.95,174.67");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=227.72,206.97");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=144.07,330.30");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=129.66,269.05");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=141.67,319.92");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=188.34,187.73");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=246.52,239.05");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=304.32,393.50");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=388.51,304.09");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=279.96,247.33");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=272.92,255.13");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=144.65,297.83");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=334.72,336.25");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=253.74,255.64");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=272.90,284.50");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=224.01,327.32");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=227.53,359.65");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=207.41,225.30");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=210.27,374.91");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=363.04,374.50");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=354.97,278.10");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=382.72,341.59");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=105.47,129.92");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=217.39,83.47");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=108.10,201.81");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=203.55,259.31");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=235.62,271.77");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=110.42,224.19");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=222.40,197.40");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=197.95,243.91");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=138.50,217.88");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=214.38,294.77");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=369.50,332.27");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=321.08,361.38");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=245.65,214.81");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=203.88,289.92");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=188.48,267.56");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=225.07,238.94");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=214.18,185.54");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=390.47,315.92");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=238.94,397.89");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=260.42,345.56");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=306.44,299.71");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=193.91,375.39");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=358.99,324.41");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=332.33,247.71");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=352.35,316.73");
    }

}

