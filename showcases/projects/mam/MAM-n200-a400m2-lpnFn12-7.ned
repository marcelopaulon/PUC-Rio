
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn12-7
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
        @display("p=316.00,247.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=345.50,159.23");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=351.66,150.68");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=356.07,230.09");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=335.99,265.14");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=356.75,265.10");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=363.89,277.12");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=353.50,277.11");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=322.95,307.57");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=368.25,368.61");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=313.93,391.49");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=383.73,343.28");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=351.82,311.62");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=341.23,250.60");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=391.98,240.75");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=369.64,234.63");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=312.13,212.36");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=294.20,271.97");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=347.63,199.90");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=298.21,190.77");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=395.10,180.43");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=375.38,297.98");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=342.47,360.24");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=288.14,283.39");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=341.78,343.23");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=330.14,331.62");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=290.48,392.17");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=389.49,394.90");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=389.65,371.96");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=382.01,270.87");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=357.67,212.67");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=389.50,257.78");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=372.69,312.59");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=300.37,210.38");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=319.06,158.34");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=360.57,186.51");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=349.79,69.59");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=360.06,241.34");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=318.18,279.06");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=335.24,319.34");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=343.27,277.91");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=354.85,300.91");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=268.49,263.64");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=373.33,351.91");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=336.25,295.42");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=287.95,322.05");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=358.29,374.99");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=315.92,194.60");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=393.02,164.25");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=318.54,294.07");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=244.96,229.54");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=320.10,224.33");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=260.66,150.16");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=360.49,106.54");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=308.45,148.59");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=307.28,308.31");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=314.25,259.28");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=363.80,294.37");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=316.03,354.01");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=321.63,365.15");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=286.42,347.53");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=380.03,367.99");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=354.49,347.32");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=373.62,339.56");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=375.51,223.31");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=361.09,323.19");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=336.60,236.71");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=368.39,248.19");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=382.10,201.15");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=369.04,143.76");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=329.37,106.98");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=327.26,243.24");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=260.50,209.90");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=291.11,251.18");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=323.30,205.69");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=382.71,325.24");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=370.26,389.28");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=397.16,295.65");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=264.68,340.23");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=399.02,343.38");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=298.56,321.72");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=260.15,255.47");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=381.57,285.84");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=376.23,188.59");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=277.75,253.38");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=246.06,257.98");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=372.93,83.53");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=388.08,134.72");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=330.91,179.48");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=254.56,305.16");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=380.01,174.23");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=397.16,273.32");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=364.01,334.63");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=250.04,290.09");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=296.56,372.06");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=221.47,376.24");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=375.78,261.54");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=298.25,334.88");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=277.92,236.56");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=349.68,180.44");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=364.18,257.60");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=354.01,133.30");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=281.44,204.99");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=326.45,170.20");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=334.13,205.53");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=324.03,140.39");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=268.23,280.92");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=329.57,279.56");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=320.53,268.12");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=273.06,329.69");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=293.33,293.48");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=357.78,393.12");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=302.12,391.80");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=388.51,353.17");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=265.88,294.90");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=260.82,270.19");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=397.40,221.33");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=320.63,235.62");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=260.91,181.47");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=221.74,219.09");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=289.30,165.66");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=350.39,244.11");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=393.12,308.89");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=307.02,233.53");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=297.31,303.10");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=346.47,210.33");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=351.84,327.26");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=330.72,342.07");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=339.11,370.64");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=393.37,331.91");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=311.29,319.27");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=345.30,385.73");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=328.96,218.63");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=382.25,213.18");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=397.10,284.27");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=395.12,203.33");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=252.69,318.26");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=375.14,72.28");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=328.61,120.84");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=387.43,225.59");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=362.83,309.65");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=348.19,170.30");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=353.91,289.03");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=324.91,254.75");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=230.90,310.35");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=283.55,369.28");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=246.95,357.51");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=399.01,366.52");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=306.03,271.57");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=358.76,168.84");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=366.55,207.74");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=299.59,221.02");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=275.18,172.93");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=231.26,275.26");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=371.25,108.32");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=340.60,186.07");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=366.56,218.70");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=296.78,238.59");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=342.79,226.58");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=287.09,310.63");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=379.54,240.67");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=225.79,285.64");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=302.49,345.25");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=259.08,366.60");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=318.69,331.69");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=330.25,355.84");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=274.23,317.93");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=308.85,185.94");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=305.11,170.20");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=281.87,184.72");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=358.10,196.29");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=276.30,124.96");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=384.15,96.27");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=319.20,177.43");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=287.78,217.60");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=346.95,261.67");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=372.54,329.38");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=260.56,245.08");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=274.55,389.55");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=356.46,358.54");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=242.31,332.58");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=336.10,394.47");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=326.57,380.55");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=397.74,190.16");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=399.13,254.66");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=334.97,307.91");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=266.22,226.47");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=294.94,261.75");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=361.74,152.63");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=313.51,102.43");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=395.04,319.77");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=278.73,268.17");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=280.43,289.99");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=369.05,196.38");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=328.59,194.77");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=223.59,301.01");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=276.56,355.48");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=376.91,381.66");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=346.82,397.06");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=387.70,299.57");
    }

}

