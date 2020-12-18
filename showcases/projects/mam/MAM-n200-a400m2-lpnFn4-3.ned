
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn4-3
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
        @display("p=272.00,241.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=309.18,211.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=372.36,150.06");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=280.25,158.59");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=289.69,223.87");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=277.52,214.69");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=316.78,230.46");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=303.62,230.49");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=324.51,212.95");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=283.90,246.48");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=303.05,315.51");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=285.63,337.88");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=239.44,253.86");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=255.07,209.33");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=168.23,162.72");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=151.77,178.51");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=76.88,225.17");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=96.26,252.82");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=83.34,200.40");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=164.04,253.94");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=146.15,254.15");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=140.01,303.16");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=165.18,271.97");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=162.27,302.01");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=213.57,279.59");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=251.14,281.59");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=232.14,264.89");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=152.19,280.52");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=80.10,278.19");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=83.75,341.28");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=78.06,354.77");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=4.66,305.24");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=28.71,292.56");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=130.26,322.67");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=52.67,329.78");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=42.64,315.12");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=40.43,303.64");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=38.12,286.06");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=39.97,332.58");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=71.72,378.63");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=42.88,352.26");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=26.58,353.25");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=57.92,242.74");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=70.53,324.29");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=121.70,280.78");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=167.84,379.87");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=135.87,380.07");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=212.91,358.40");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=158.25,361.17");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=148.58,399.91");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=275.00,253.65");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=320.76,240.90");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=394.07,220.70");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=206.49,163.46");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=296.29,238.80");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=245.06,171.44");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=310.29,239.21");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=206.29,229.19");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=346.51,292.96");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=273.40,225.99");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=273.83,274.23");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=243.43,291.33");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=311.58,260.28");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=343.40,225.18");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=160.33,170.08");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=166.54,111.93");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=14.72,301.76");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=137.51,225.21");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=109.05,215.19");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=158.86,242.73");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=186.73,235.51");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=134.84,274.75");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=176.00,348.12");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=218.85,312.13");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=200.02,293.80");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=276.01,189.20");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=278.17,301.83");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=193.56,273.68");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=69.75,286.00");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=121.37,355.85");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=91.18,312.13");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=98.58,330.44");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=32.42,322.25");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=153.03,351.42");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=58.68,319.07");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=68.66,369.04");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=21.92,251.09");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=25.82,281.74");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=14.07,261.66");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=124.53,295.74");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=91.26,348.81");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=68.14,389.05");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=112.58,253.08");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=78.94,263.61");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=64.20,223.09");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=103.50,348.46");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=112.32,366.84");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=250.66,389.49");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=224.50,296.98");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=55.73,364.72");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=236.33,214.41");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=361.36,271.71");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=371.86,99.80");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=335.52,195.19");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=342.59,280.34");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=358.17,178.54");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=345.12,198.50");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=363.64,301.09");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=381.21,217.46");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=258.65,181.71");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=336.06,326.11");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=329.15,386.82");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=203.58,313.28");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=310.83,133.85");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=190.85,154.72");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=98.89,143.96");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=136.65,246.38");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=6.68,244.06");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=132.11,157.97");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=210.38,290.84");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=181.16,201.65");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=145.99,314.85");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=160.83,341.89");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=106.84,303.47");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=263.17,253.81");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=176.01,239.43");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=236.78,320.32");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=201.28,331.70");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=113.09,323.22");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=85.84,243.90");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=98.95,376.26");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=31.53,310.05");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=12.05,382.52");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=117.59,389.64");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=38.07,386.41");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=67.39,238.07");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=32.10,244.99");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=1.05,276.01");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=109.78,280.86");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=85.76,331.00");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=61.35,380.57");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=30.98,264.24");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=15.28,168.49");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=9.38,338.37");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=124.32,266.94");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=190.31,382.01");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=217.38,344.20");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=208.73,374.85");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=84.89,370.47");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=181.04,367.78");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=211.25,261.37");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=363.82,157.25");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=344.92,115.97");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=312.70,119.68");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=279.14,170.52");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=291.78,210.49");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=267.59,309.09");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=367.57,234.16");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=314.57,188.47");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=224.32,257.88");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=320.55,307.10");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=274.49,358.73");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=288.20,199.45");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=214.39,206.99");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=214.41,247.93");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=202.68,118.76");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=126.43,245.08");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=122.58,233.28");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=79.87,174.74");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=145.17,270.56");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=156.71,214.11");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=148.07,290.06");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=181.97,265.10");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=212.12,302.90");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=277.37,348.46");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=266.73,367.71");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=278.99,327.21");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=204.91,269.86");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=61.21,266.07");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=81.52,391.27");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=20.86,324.94");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=102.88,318.53");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=89.95,288.08");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=84.43,302.71");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=4.35,322.60");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=65.53,352.65");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=69.87,298.89");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=59.64,276.37");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=79.16,319.09");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=54.45,399.05");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=32.80,362.24");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=36.31,372.33");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=46.60,265.44");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=13.74,398.01");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=110.96,292.63");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=139.75,331.30");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=115.61,376.91");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=237.80,374.72");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=155.90,321.29");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=133.56,343.53");
    }

}

