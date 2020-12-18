
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn12-9
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
        @display("p=512.00,242.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=433.27,225.96");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=470.14,208.00");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=433.11,255.77");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=413.64,340.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=389.46,265.69");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=374.07,262.59");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=379.60,238.16");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=407.32,262.98");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=345.56,271.20");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=304.41,191.58");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=217.54,179.26");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=242.58,180.74");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=156.62,177.24");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=98.21,207.63");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=135.99,159.05");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=205.08,149.38");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=452.59,250.81");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=388.35,198.03");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=464.53,226.92");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=369.42,205.45");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=410.84,360.94");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=415.87,247.67");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=388.87,284.72");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=372.94,249.17");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=384.70,221.82");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=394.54,329.35");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=367.01,159.41");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=228.21,131.41");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=251.40,137.29");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=88.77,157.99");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=115.77,222.51");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=83.42,229.18");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=175.24,134.86");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=496.25,175.95");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=426.11,266.13");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=403.51,150.41");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=499.34,304.66");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=490.06,347.20");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=384.37,255.57");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=294.36,247.27");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=369.48,304.36");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=485.31,281.97");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=373.48,360.10");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=211.36,210.08");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=222.55,91.59");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=307.67,212.22");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=129.95,260.57");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=64.44,217.09");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=119.73,247.81");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=169.25,209.03");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=519.46,170.10");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=415.73,154.37");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=490.82,246.48");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=356.26,285.49");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=429.54,297.80");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=405.96,230.38");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=296.11,279.35");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=335.72,182.74");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=380.98,299.73");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=379.00,273.08");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=264.23,164.74");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=198.88,271.95");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=221.57,203.42");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=88.33,195.88");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=162.78,158.07");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=122.88,90.25");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=281.85,104.43");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=528.70,215.01");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=420.77,225.42");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=521.45,229.79");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=421.15,209.17");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=398.14,362.01");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=444.96,243.85");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=344.00,218.16");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=332.25,241.28");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=439.87,264.91");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=347.80,242.35");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=266.49,263.23");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=182.21,164.16");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=309.60,244.06");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=143.27,177.88");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=65.34,268.47");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=122.60,209.37");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=176.45,77.47");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=549.22,206.60");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=338.91,230.67");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=478.72,185.82");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=426.87,195.86");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=485.88,360.89");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=424.12,328.11");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=352.16,178.04");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=444.61,207.77");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=486.71,219.00");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=363.12,190.08");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=325.34,213.95");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=132.80,228.78");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=309.20,107.01");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=146.77,135.45");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=146.67,244.68");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=163.73,184.66");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=256.60,182.59");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=538.99,274.83");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=478.06,303.69");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=459.56,273.22");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=472.70,323.40");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=399.24,400.86");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=403.12,246.98");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=355.19,223.27");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=478.89,227.28");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=454.98,177.34");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=362.89,238.31");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=295.46,200.63");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=133.83,199.61");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=231.70,188.53");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=213.34,117.13");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=135.93,213.76");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=129.40,77.38");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=217.01,140.62");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=545.59,160.24");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=437.57,190.53");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=420.32,282.35");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=492.13,199.40");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=476.72,367.96");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=403.63,181.51");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=364.79,351.76");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=350.49,259.60");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=367.15,227.99");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=367.78,329.93");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=336.93,160.42");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=252.20,196.26");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=234.09,208.26");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=191.85,142.06");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=107.63,194.37");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=75.79,207.23");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=186.89,191.29");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=518.51,251.60");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=446.36,222.05");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=447.61,125.19");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=501.72,261.21");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=435.54,332.03");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=465.29,258.14");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=393.03,248.74");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=375.08,169.12");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=402.39,297.14");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=316.15,330.88");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=300.27,99.69");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=240.28,248.74");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=299.73,236.65");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=155.95,112.73");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=18.37,261.26");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=98.93,87.45");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=278.83,197.31");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=587.88,195.56");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=421.93,138.78");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=542.91,247.47");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=362.80,250.55");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=410.23,392.15");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=341.15,312.90");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=445.22,302.24");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=369.30,315.54");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=443.32,348.06");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=310.17,341.26");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=257.17,153.26");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=285.82,214.54");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=151.34,147.41");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=177.16,249.72");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=65.18,241.20");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=198.23,121.32");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=181.73,60.88");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=527.41,297.82");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=389.54,158.28");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=458.84,206.69");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=432.26,279.20");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=377.28,335.01");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=305.79,259.34");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=412.23,189.72");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=390.59,304.13");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=466.13,295.62");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=329.15,282.20");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=343.29,122.22");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=284.15,145.59");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=284.88,124.49");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=193.14,220.30");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=95.17,237.05");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=148.93,87.45");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=197.23,233.89");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=557.05,158.26");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=494.45,150.19");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=557.07,170.08");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=451.08,339.29");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=437.65,315.97");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=392.29,346.53");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=278.75,276.55");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=313.06,294.90");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=436.92,174.36");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=250.32,281.59");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=334.37,144.98");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=162.26,220.25");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=253.21,250.71");
    }

}

