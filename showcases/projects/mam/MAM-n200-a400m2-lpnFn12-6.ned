
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn12-6
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
        @display("p=229.00,129.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=272.39,136.60");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=206.19,160.22");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=230.29,200.53");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=241.39,210.25");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=219.83,294.63");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=251.54,242.91");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=252.18,265.81");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=305.20,289.18");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=335.22,215.37");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=325.65,235.42");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=320.29,223.96");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=204.05,280.05");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=271.51,300.69");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=306.05,313.79");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=330.77,360.45");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=352.89,373.38");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=273.27,121.94");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=315.28,118.22");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=225.59,140.48");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=172.10,177.52");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=237.26,256.32");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=256.87,280.08");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=201.15,240.03");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=264.84,171.43");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=275.55,328.84");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=345.11,199.14");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=349.51,227.05");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=308.63,226.48");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=147.60,296.50");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=229.71,345.60");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=273.76,388.88");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=351.89,287.94");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=398.53,306.63");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=287.03,49.20");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=218.78,160.64");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=187.99,128.79");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=252.23,215.73");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=277.29,181.17");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=213.80,327.64");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=306.65,250.09");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=299.86,260.76");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=271.94,213.35");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=280.67,198.29");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=331.77,273.80");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=277.18,235.43");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=207.00,298.17");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=277.05,281.56");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=373.01,283.63");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=329.84,375.52");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=349.26,351.16");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=135.85,121.46");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=199.75,87.76");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=224.95,217.88");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=199.12,200.53");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=330.96,179.59");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=221.21,305.61");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=259.60,299.82");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=181.58,265.80");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=315.65,310.47");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=390.82,249.70");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=342.17,268.33");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=267.84,248.08");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=139.31,302.11");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=287.52,287.75");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=287.38,361.60");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=332.58,397.09");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=374.28,311.99");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=243.41,107.81");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=247.92,86.85");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=153.82,160.51");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=260.30,257.86");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=170.18,192.37");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=180.38,317.18");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=172.01,286.35");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=245.22,312.33");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=282.81,257.14");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=296.21,231.65");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=365.16,235.36");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=330.97,200.28");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=272.35,270.33");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=244.48,358.95");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=299.93,390.03");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=338.35,353.19");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=310.45,336.83");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=252.22,49.91");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=306.29,111.11");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=233.35,148.05");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=171.61,139.22");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=207.08,231.12");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=188.64,256.40");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=241.96,231.36");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=251.13,326.82");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=266.92,226.90");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=322.02,190.28");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=273.47,161.40");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=302.33,197.46");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=204.86,348.95");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=249.23,291.20");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=313.77,280.37");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=379.50,361.87");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=294.20,349.59");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=247.44,131.06");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=316.18,145.49");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=254.06,165.48");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=159.14,235.40");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=200.00,169.22");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=228.12,273.09");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=227.22,260.16");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=214.11,276.75");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=304.14,274.47");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=328.44,259.22");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=320.75,172.69");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=282.27,305.89");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=146.78,327.85");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=260.76,309.83");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=356.76,331.34");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=367.62,399.90");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=322.25,322.51");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=309.54,135.64");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=313.68,68.23");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=230.11,160.08");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=205.50,180.28");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=261.29,197.53");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=166.41,341.63");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=216.36,249.74");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=286.75,277.24");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=309.88,325.74");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=353.51,243.37");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=340.35,242.51");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=383.34,223.05");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=201.05,254.89");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=221.32,335.59");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=389.08,343.13");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=307.20,303.20");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=394.61,399.99");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=220.72,88.64");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=326.53,107.12");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=160.68,205.37");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=150.61,174.24");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=183.02,240.31");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=127.14,283.22");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=251.07,196.25");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=254.35,225.90");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=348.11,276.87");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=331.41,225.23");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=361.24,195.25");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=338.27,126.11");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=178.76,214.58");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=349.12,316.06");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=365.53,359.57");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=330.21,346.75");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=390.79,380.37");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=244.38,156.29");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=191.78,151.97");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=241.49,141.30");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=233.08,177.55");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=198.46,121.00");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=178.34,303.56");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=281.26,169.30");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=251.44,253.01");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=315.97,262.75");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=363.19,308.11");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=388.09,267.65");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=306.15,167.83");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=187.38,296.76");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=290.94,373.47");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=231.15,319.70");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=399.81,295.65");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=366.40,373.94");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=165.52,157.73");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=291.76,122.75");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=252.90,176.27");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=132.22,202.80");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=289.43,186.00");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=204.02,333.27");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=292.93,301.14");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=214.32,238.53");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=333.09,323.38");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=293.13,169.60");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=378.46,240.48");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=306.41,238.90");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=229.53,369.51");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=247.79,342.49");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=370.17,338.55");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=366.25,349.39");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=378.88,350.52");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=292.53,140.08");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=227.47,79.69");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=223.12,172.48");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=217.06,211.46");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=150.66,217.54");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=164.94,260.87");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=164.47,275.70");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=176.28,248.25");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=243.40,282.51");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=295.60,217.00");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=392.33,209.90");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=284.61,245.66");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=108.48,288.11");
    }

}

