
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
        @display("p=123.89,323.86");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=177.51,264.19");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=238.94,270.82");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=183.82,310.89");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=196.37,385.58");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=235.47,346.05");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=175.12,361.46");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=160.08,395.37");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=177.20,379.45");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=206.52,326.28");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=296.37,297.83");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=392.23,297.82");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=387.20,250.38");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=384.59,170.23");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=393.86,127.37");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=394.91,99.17");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=300.31,93.57");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=389.23,76.18");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=375.02,49.65");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=322.38,68.76");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=342.58,140.45");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=337.96,116.96");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=344.09,206.25");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=315.02,144.62");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=362.82,125.71");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=303.79,153.48");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=358.12,152.94");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=338.35,171.18");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=307.98,232.13");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=357.78,188.97");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=370.11,281.87");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=399.87,209.09");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=332.87,269.67");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=248.80,245.19");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=275.83,276.73");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=287.07,228.06");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=275.91,177.89");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=337.78,253.13");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=302.27,202.70");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=307.05,190.33");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=293.03,206.56");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=315.01,161.16");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=262.67,154.05");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=177.28,162.33");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=138.39,197.56");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=136.82,79.66");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=149.71,111.68");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=79.46,160.34");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=61.10,142.34");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=100.72,335.67");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=161.90,286.85");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=194.90,354.60");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=263.92,278.96");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=133.77,354.82");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=108.57,360.91");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=263.36,305.34");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=154.58,317.25");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=168.45,387.40");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=169.60,323.46");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=184.57,369.02");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=264.98,229.49");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=378.90,309.81");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=386.04,235.80");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=320.56,210.32");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=386.22,136.37");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=382.44,11.07");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=325.26,56.66");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=315.49,92.05");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=399.94,38.27");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=280.84,34.00");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=369.62,111.35");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=272.88,47.90");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=369.50,224.08");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=358.63,82.94");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=387.18,56.24");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=283.08,116.36");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=381.14,187.94");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=374.66,151.69");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=321.00,225.40");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=392.23,188.88");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=370.30,267.24");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=390.18,226.36");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=331.42,286.94");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=223.94,259.80");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=314.54,281.13");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=305.42,326.17");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=276.42,164.80");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=389.01,278.70");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=221.91,227.49");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=255.57,175.28");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=271.24,202.64");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=331.54,155.75");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=268.20,131.33");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=169.72,154.62");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=171.06,272.21");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=59.34,112.12");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=141.14,99.41");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=91.81,141.39");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=53.74,149.53");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=127.33,341.10");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=113.92,387.80");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=173.35,186.09");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=229.94,198.89");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=197.69,279.37");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=181.75,323.57");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=210.61,313.17");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=141.82,360.94");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=208.84,376.26");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=81.19,377.49");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=151.81,379.91");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=256.04,372.65");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=377.26,338.94");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=363.61,239.87");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=358.23,210.00");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=375.79,122.04");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=396.32,2.96");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=282.16,155.93");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=338.78,64.78");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=358.93,56.54");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=308.07,50.43");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=331.51,136.24");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=329.31,77.32");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=290.31,245.90");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=392.06,146.97");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=372.79,178.22");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=309.44,172.58");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=321.14,176.54");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=294.29,180.77");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=341.02,226.13");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=346.42,89.70");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=391.18,266.19");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=380.87,208.51");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=370.80,330.80");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=226.92,270.67");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=215.79,354.07");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=223.62,245.42");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=285.46,187.55");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=368.95,200.95");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=259.05,211.95");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=276.99,137.26");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=365.03,167.88");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=256.48,200.65");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=243.36,117.38");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=267.52,170.34");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=63.70,239.16");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=180.01,37.44");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=85.89,95.00");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=92.28,120.04");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=102.91,93.70");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=130.45,213.78");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=141.69,346.92");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=124.26,305.27");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=194.90,325.95");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=241.15,313.55");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=195.84,396.81");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=276.01,336.84");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=156.66,331.27");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=131.94,381.65");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=187.77,335.06");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=229.65,319.16");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=273.28,320.83");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=355.51,232.53");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=317.23,239.83");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=398.16,172.45");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=326.42,124.10");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=382.89,97.69");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=310.37,28.77");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=349.85,39.37");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=342.03,53.88");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=386.16,37.67");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=355.00,171.57");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=314.23,132.41");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=297.09,230.46");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=282.42,97.87");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=274.94,123.68");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=290.30,167.49");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=328.27,199.40");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=302.96,136.36");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=319.51,304.27");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=352.99,197.94");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=356.77,281.30");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=348.02,246.09");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=369.83,294.50");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=275.50,308.64");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=234.13,225.14");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=247.88,234.24");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=273.25,221.03");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=356.50,252.88");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=346.12,151.74");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=317.03,186.47");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=374.50,238.16");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=289.35,140.78");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=337.60,185.85");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=251.42,132.28");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=147.60,165.19");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=92.60,37.63");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=198.52,109.76");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=34.26,104.94");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=83.02,59.08");
    }

}

