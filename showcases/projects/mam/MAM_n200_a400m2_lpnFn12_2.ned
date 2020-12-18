
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_2
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
        @display("p=98.19,274.41");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=50.57,346.85");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=75.32,388.23");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=160.22,397.14");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=120.70,391.01");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=162.19,369.18");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=180.09,345.30");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=170.84,331.03");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=189.41,322.67");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=206.57,300.63");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=159.80,247.40");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=254.46,255.12");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=300.50,241.50");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=302.97,222.73");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=277.13,159.41");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=265.42,164.82");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=103.89,283.45");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=132.97,319.35");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=56.08,360.45");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=70.16,359.26");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=143.43,371.65");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=92.53,378.56");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=174.29,357.19");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=195.64,383.48");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=170.79,312.77");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=240.00,328.56");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=284.04,248.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=166.00,303.58");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=250.59,322.67");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=230.17,304.83");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=242.32,264.32");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=325.99,219.65");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=198.20,201.16");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=129.13,332.02");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=127.96,250.47");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=53.57,323.88");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=173.51,387.00");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=150.31,393.37");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=105.70,342.05");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=179.38,398.14");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=227.70,379.28");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=124.61,287.56");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=271.80,357.38");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=268.40,254.51");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=169.33,251.61");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=250.58,223.37");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=340.32,230.12");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=298.19,253.70");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=263.00,147.26");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=198.18,157.08");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=87.59,295.70");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=55.95,313.13");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=116.18,325.25");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=13.68,390.18");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=213.31,372.49");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=113.27,362.29");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=209.79,353.23");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=198.17,341.84");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=175.56,297.12");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=203.15,281.99");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=219.98,241.12");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=130.63,186.08");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=159.45,268.39");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=312.55,168.70");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=354.13,181.40");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=273.25,174.19");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=358.14,168.52");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=40.62,342.70");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=155.79,291.23");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=29.47,386.92");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=30.30,358.69");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=110.56,399.54");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=134.20,390.94");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=256.33,365.57");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=255.78,381.41");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=229.13,341.17");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=162.13,227.13");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=203.43,318.22");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=206.75,239.79");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=194.72,311.84");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=358.91,246.70");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=328.31,244.88");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=361.23,140.61");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=302.35,182.33");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=45.08,249.76");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=44.60,293.50");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=26.16,375.90");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=10.99,315.65");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=145.82,345.38");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=119.86,380.67");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=137.37,306.57");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=84.00,339.73");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=125.74,354.52");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=130.61,373.83");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=180.51,277.16");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=217.52,309.16");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=225.67,262.59");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=313.00,273.01");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=371.09,216.91");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=341.80,153.88");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=264.60,243.90");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=15.87,290.17");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=6.45,301.26");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=78.13,280.97");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=110.08,374.60");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=226.08,365.71");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=148.47,316.57");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=217.36,340.01");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=93.65,364.60");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=231.65,290.05");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=167.09,341.92");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=269.09,290.96");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=218.42,281.77");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=253.50,243.02");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=275.36,210.88");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=310.72,231.82");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=246.26,135.13");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=212.59,167.06");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=146.13,223.94");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=96.61,262.71");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=64.67,328.68");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=97.12,353.53");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=155.43,348.29");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=181.21,369.80");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=138.23,355.20");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=90.81,318.99");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=254.16,353.33");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=156.00,328.51");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=232.40,234.57");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=73.22,238.22");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=251.10,173.05");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=382.68,287.30");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=316.55,144.62");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=295.88,168.57");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=269.44,229.08");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=118.80,257.20");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=107.22,198.98");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=41.32,325.48");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=75.07,349.75");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=214.95,393.47");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=93.05,398.85");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=186.95,354.71");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=237.39,360.45");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=248.50,293.66");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=182.61,334.59");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=219.06,230.08");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=190.40,168.00");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=281.11,271.58");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=307.08,205.34");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=360.08,228.04");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=285.99,152.38");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=239.73,125.69");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=141.87,240.13");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=58.28,269.03");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=37.17,262.65");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=60.50,390.59");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=152.26,357.95");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=72.32,375.85");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=80.32,322.23");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=168.05,277.42");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=169.68,264.65");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=181.70,312.61");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=200.22,251.43");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=128.23,173.26");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=306.93,334.35");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=262.71,205.80");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=342.04,203.48");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=195.49,178.22");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=305.37,129.67");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=111.10,314.81");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=138.13,294.00");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=27.42,282.14");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=59.58,379.88");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=219.66,357.80");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=45.45,394.48");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=186.98,388.60");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=135.79,340.70");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=134.57,264.82");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=234.97,394.28");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=198.19,294.63");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=78.38,199.63");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=215.43,213.70");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=273.80,193.12");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=313.33,216.30");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=242.79,186.77");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=210.12,193.13");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=75.73,261.08");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=5.16,288.90");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=0.03,267.25");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=31.91,319.24");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=161.95,383.76");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=163.69,321.25");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=145.96,333.52");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=188.45,302.59");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=113.26,298.36");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=263.65,316.58");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=222.22,294.08");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=130.24,226.36");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=271.36,331.98");
    }

}

