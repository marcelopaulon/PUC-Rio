
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_2
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=178.94,99.70");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=198.52,163.58");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=217.93,203.83");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=202.89,207.97");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=288.98,242.90");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=364.26,225.66");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=310.97,197.74");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=275.23,203.33");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=327.42,156.41");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=248.44,211.63");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=342.19,201.00");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=403.30,227.43");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=357.62,215.38");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=352.31,200.33");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=349.60,298.70");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=380.99,234.59");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=99.47,32.66");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=162.70,105.09");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=135.71,85.91");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=209.24,141.84");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=200.61,268.32");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=234.34,205.20");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=339.18,259.19");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=377.98,164.52");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=291.77,159.85");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=319.18,145.35");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=286.84,129.04");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=344.29,139.85");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=422.83,322.41");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=433.48,209.60");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=394.94,208.25");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=381.56,265.39");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=419.55,245.48");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=155.72,158.11");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=156.90,8.53");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=197.98,70.13");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=268.59,239.94");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=196.02,184.19");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=241.21,155.78");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=347.75,222.17");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=331.94,166.54");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=304.43,245.80");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=297.07,138.16");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=208.33,193.37");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=332.32,195.74");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=400.08,240.88");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=401.62,144.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=376.69,286.07");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=356.68,287.53");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=444.00,167.72");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=152.58,128.20");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=150.74,139.36");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=201.09,148.36");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=226.39,249.50");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=173.63,251.03");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=360.74,186.23");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=443.43,251.15");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=319.01,119.29");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=284.59,194.37");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=331.88,146.77");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=276.61,182.34");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=256.92,224.00");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=470.07,159.30");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=367.10,280.01");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=411.95,142.07");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=336.27,309.30");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=383.06,216.64");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=177.16,147.51");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=104.78,64.43");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=213.89,158.96");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=176.88,204.73");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=206.67,221.17");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=244.32,183.53");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=419.14,224.07");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=313.21,176.96");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=305.11,216.94");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=309.58,165.69");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=269.46,256.27");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=303.34,288.02");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=406.82,261.49");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=348.65,234.69");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=392.26,159.00");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=361.82,373.78");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=351.35,182.17");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=104.08,22.61");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=233.44,139.61");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=168.18,127.79");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=232.88,129.54");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=182.96,178.52");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=284.67,314.81");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=311.07,233.37");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=242.07,226.78");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=310.81,254.93");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=411.61,164.50");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=188.51,191.89");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=364.43,240.07");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=395.94,326.00");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=375.49,205.75");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=430.34,222.13");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=320.40,316.36");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=372.42,256.05");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=121.12,75.32");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=198.19,98.10");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=254.07,89.41");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=217.44,220.96");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=279.88,247.99");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=296.18,263.54");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=316.81,294.75");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=266.20,182.19");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=262.04,293.64");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=274.03,140.67");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=226.86,192.46");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=320.94,207.49");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=439.69,187.70");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=366.22,304.14");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=341.09,150.83");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=299.54,275.79");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=327.91,229.99");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=95.80,52.45");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=246.76,118.01");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=125.32,227.70");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=137.00,198.76");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=222.56,167.79");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=228.08,262.47");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=386.44,245.57");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=299.33,187.66");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=260.98,204.18");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=254.32,179.33");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=339.19,177.01");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=371.86,113.71");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=445.70,234.75");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=354.06,121.27");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=356.48,154.39");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=309.68,370.67");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=391.64,291.49");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=92.10,17.09");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=112.44,97.62");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=110.31,194.62");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=168.15,226.17");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=197.20,240.12");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=273.30,278.56");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=429.96,196.24");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=328.12,131.12");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=185.39,211.42");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=229.67,155.27");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=248.24,297.18");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=332.33,214.56");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=432.19,298.27");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=419.03,261.52");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=386.81,199.13");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=290.42,342.14");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=291.81,211.22");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=23.05,105.74");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=215.44,90.13");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=207.35,107.16");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=149.60,192.90");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=136.62,151.21");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=256.63,303.68");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=347.27,170.81");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=240.33,238.95");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=323.38,251.43");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=389.65,97.24");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=262.97,160.92");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=340.36,248.84");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=407.58,324.68");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=367.72,137.20");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=402.55,201.71");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=394.79,260.56");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=351.82,245.21");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=53.67,170.35");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=162.29,22.84");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=210.54,175.81");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=191.82,223.19");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=256.02,280.57");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=308.63,306.42");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=445.41,214.23");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=373.90,152.55");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=253.68,243.29");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=302.20,176.57");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=225.23,235.67");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=397.95,177.76");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=446.27,286.75");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=272.01,171.18");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=305.06,122.01");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=334.37,348.44");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=391.50,235.23");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=50.58,80.28");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=193.66,118.70");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=205.99,81.71");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=208.54,234.89");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=134.60,185.99");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=328.27,326.28");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=286.87,229.09");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=358.25,269.66");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=270.02,214.28");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=334.01,115.87");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=254.65,254.45");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=313.67,272.78");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=480.71,239.48");
    }

}

