
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_8
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
        @display("p=103.78,289.59");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=110.08,251.92");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=108.96,278.37");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=116.75,285.22");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=71.06,334.07");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=157.06,284.88");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=231.54,239.10");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=275.51,325.79");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=266.09,332.21");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=339.99,357.80");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=300.09,305.26");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=287.32,314.77");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=219.16,283.45");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=276.89,352.47");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=188.35,335.52");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=142.32,387.88");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=64.97,228.64");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=73.00,295.83");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=169.32,258.81");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=92.51,314.10");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=170.54,204.73");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=128.39,289.07");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=135.43,264.35");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=268.45,237.07");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=292.01,260.56");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=309.43,375.76");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=336.17,342.11");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=341.00,270.73");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=337.21,254.69");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=183.45,258.97");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=348.89,332.52");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=189.93,324.87");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=115.32,314.73");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=86.23,248.21");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=72.85,248.51");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=97.17,263.52");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=103.99,339.22");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=147.72,374.66");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=83.35,341.98");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=219.15,210.64");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=240.93,214.74");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=262.20,260.81");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=274.70,393.44");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=374.45,337.13");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=272.23,363.62");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=266.97,312.61");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=192.41,283.73");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=196.89,361.37");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=198.47,273.82");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=167.71,378.84");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=136.55,278.28");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=62.08,306.00");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=121.81,237.14");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=111.29,267.57");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=92.66,275.59");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=52.93,320.97");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=125.37,355.75");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=200.80,227.29");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=331.67,279.09");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=192.74,371.66");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=351.06,312.89");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=274.34,274.00");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=220.35,273.09");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=155.59,271.66");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=304.11,393.88");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=252.23,359.44");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=89.72,372.12");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=66.53,345.52");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=123.14,299.76");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=103.96,221.09");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=39.97,334.70");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=83.61,300.12");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=63.58,399.74");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=111.86,195.96");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=313.50,202.17");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=306.94,257.62");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=241.77,273.85");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=316.99,333.65");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=285.49,237.03");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=324.98,347.88");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=204.39,237.86");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=292.79,364.89");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=103.62,313.63");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=162.05,392.22");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=95.67,323.80");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=150.80,338.59");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=69.25,202.59");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=87.77,288.37");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=135.50,228.49");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=60.57,248.27");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=222.79,259.79");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=236.18,155.61");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=354.08,366.44");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=313.42,294.80");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=311.09,346.16");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=203.34,293.69");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=206.62,257.05");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=157.15,250.02");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=198.83,316.63");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=229.40,315.48");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=177.29,391.37");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=52.97,346.56");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=79.19,216.15");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=94.34,239.38");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=67.08,268.18");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=210.96,308.70");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=98.17,356.72");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=215.04,358.09");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=312.09,180.14");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=250.69,259.27");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=289.00,295.93");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=393.40,378.51");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=274.24,303.96");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=322.06,269.51");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=156.39,238.06");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=304.05,356.30");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=169.36,334.25");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=133.63,373.75");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=178.84,300.71");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=126.86,255.32");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=46.94,250.88");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=165.77,218.86");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=195.63,301.80");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=22.21,308.16");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=225.00,324.87");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=297.63,243.06");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=333.47,303.14");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=228.66,383.72");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=323.87,291.89");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=243.98,385.66");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=348.17,260.85");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=241.00,297.32");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=256.52,301.81");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=214.75,378.42");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=177.29,320.58");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=164.61,305.16");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=11.54,260.07");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=75.07,230.58");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=55.22,234.58");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=44.75,294.25");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=33.16,353.22");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=182.95,205.92");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=151.06,293.40");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=244.58,314.23");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=261.61,370.92");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=314.52,390.02");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=384.09,333.81");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=368.10,283.76");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=227.39,289.26");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=221.22,391.22");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=213.83,242.31");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=169.27,348.06");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=107.96,205.54");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=123.14,371.30");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=66.45,167.22");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=149.75,309.38");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=78.93,265.01");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=143.65,326.40");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=120.98,205.66");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=240.47,252.86");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=233.30,334.66");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=248.63,371.33");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=302.62,288.54");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=339.74,215.62");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=311.87,248.53");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=307.22,277.99");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=348.80,379.95");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=173.90,285.96");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=141.54,358.38");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=141.31,342.87");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=47.32,215.46");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=25.47,272.80");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=155.93,365.90");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=66.09,285.53");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=55.50,383.26");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=161.64,185.53");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=208.59,200.22");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=340.93,373.67");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=212.16,345.57");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=284.54,371.72");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=349.39,297.02");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=358.30,246.16");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=229.25,194.82");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=183.37,367.15");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=248.82,332.76");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=170.33,360.31");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=158.45,345.98");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=105.02,236.56");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=131.52,195.95");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=73.97,316.86");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=125.94,333.92");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=102.30,373.90");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=252.72,271.15");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=185.93,276.07");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=323.31,324.03");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=361.57,350.67");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=330.71,382.66");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=369.02,324.60");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=338.02,234.04");
    }

}

