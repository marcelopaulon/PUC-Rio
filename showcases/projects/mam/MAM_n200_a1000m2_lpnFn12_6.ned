
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn12_6
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
        @display("p=98.21,151.10");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=183.33,153.79");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=157.63,107.71");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=235.58,168.49");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=266.05,185.00");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=247.37,181.93");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=304.27,262.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=301.27,274.18");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=288.43,281.82");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=358.36,301.63");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=288.85,344.84");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=205.46,347.98");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=285.13,322.28");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=334.00,259.40");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=275.82,306.56");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=358.91,337.29");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=113.37,138.22");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=99.56,134.60");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=265.20,210.58");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=170.69,100.32");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=325.23,131.03");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=237.90,225.20");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=217.04,162.55");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=319.50,275.01");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=289.40,269.42");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=269.41,246.65");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=366.59,280.02");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=244.19,272.78");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=211.33,255.32");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=270.61,333.85");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=300.80,320.60");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=231.34,248.96");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=370.45,359.99");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=158.41,68.48");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=121.21,77.70");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=191.65,131.82");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=147.80,103.41");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=243.93,159.61");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=251.63,191.46");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=209.41,116.71");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=271.77,174.41");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=357.38,263.92");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=235.91,305.35");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=372.14,325.72");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=346.17,374.94");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=169.48,267.41");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=260.13,323.76");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=332.86,234.17");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=293.46,251.16");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=313.61,392.73");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=105.04,113.84");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=133.48,59.16");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=195.00,153.80");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=185.12,88.08");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=197.32,210.77");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=228.55,214.74");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=303.34,217.09");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=316.20,248.07");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=310.96,280.85");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=249.17,292.90");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=408.84,261.00");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=284.17,295.36");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=146.16,380.22");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=289.56,305.35");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=330.37,296.89");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=219.46,308.97");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=339.17,434.81");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=13.01,102.24");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=158.77,204.34");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=149.34,158.90");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=136.10,142.76");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=149.26,190.21");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=298.71,174.87");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=280.35,212.45");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=371.59,241.70");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=266.42,267.71");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=318.12,319.33");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=369.71,300.30");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=264.10,308.11");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=194.13,257.31");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=294.21,400.07");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=272.96,258.04");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=309.36,371.23");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=387.71,392.67");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=79.45,185.88");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=90.17,90.14");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=111.82,103.12");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=202.93,79.08");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=200.09,184.33");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=216.58,232.13");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=251.51,139.75");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=295.33,235.31");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=398.42,294.69");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=359.51,240.71");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=432.99,307.94");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=256.94,394.77");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=151.21,357.05");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=203.26,367.10");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=377.49,219.27");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=254.33,231.22");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=354.36,353.51");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=75.39,146.44");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=126.62,214.01");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=226.14,123.45");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=84.70,175.17");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=277.71,160.81");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=174.76,204.94");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=162.77,150.83");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=339.79,344.86");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=339.94,311.46");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=325.74,332.65");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=425.24,345.98");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=246.73,259.06");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=268.03,317.59");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=246.09,240.80");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=414.36,229.15");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=244.54,383.97");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=386.89,301.85");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=66.43,85.75");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=64.34,180.76");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=131.43,162.03");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=187.38,36.04");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=139.98,177.57");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=218.92,221.86");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=211.63,212.57");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=259.57,222.59");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=354.74,279.28");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=303.12,299.20");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=422.35,245.00");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=359.59,376.88");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=220.58,351.16");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=282.37,375.72");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=405.43,219.85");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=348.13,252.84");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=351.50,365.54");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=164.59,121.68");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=94.84,220.69");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=227.58,185.98");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=203.24,48.42");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=287.94,186.92");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=345.83,138.79");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=202.95,221.41");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=328.07,250.21");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=281.99,250.60");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=236.70,324.64");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=376.93,309.02");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=240.01,430.82");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=163.85,391.69");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=332.70,398.97");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=329.04,279.76");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=273.01,295.59");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=420.37,322.51");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=57.47,91.05");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=99.91,193.80");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=178.88,123.54");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=185.72,194.43");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=256.52,171.50");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=297.71,153.56");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=201.13,196.76");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=330.28,185.90");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=311.59,196.10");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=198.39,293.89");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=365.61,290.45");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=346.78,405.16");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=189.05,378.98");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=207.66,378.14");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=320.90,217.51");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=244.96,346.36");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=443.10,313.42");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=127.96,187.98");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=99.13,83.41");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=174.29,244.42");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=147.31,57.68");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=286.21,137.54");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=260.05,201.96");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=274.08,94.34");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=279.18,351.05");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=286.80,333.83");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=284.36,197.56");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=342.46,331.32");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=306.43,440.95");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=188.38,433.89");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=242.63,370.11");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=369.15,208.72");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=283.47,364.86");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=354.26,326.88");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=127.71,135.37");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=76.65,128.40");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=210.57,200.38");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=78.31,83.16");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=237.37,202.84");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=349.41,189.43");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=218.41,269.31");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=345.74,269.53");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=341.74,278.72");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=217.43,247.00");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=397.68,347.86");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=219.23,284.49");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=203.38,327.18");
    }

}

