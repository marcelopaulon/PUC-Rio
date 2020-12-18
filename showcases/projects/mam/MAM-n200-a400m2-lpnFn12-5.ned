
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn12-5
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
        @display("p=70.00,199.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=67.59,240.33");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=96.13,246.87");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=155.04,204.05");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=229.30,258.94");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=148.53,277.39");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=134.82,324.96");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=118.69,316.45");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=79.36,300.98");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=133.55,345.61");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=46.65,293.50");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=5.70,355.60");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=4.55,267.96");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=40.65,257.09");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=35.83,278.16");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=224.51,242.17");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=248.41,211.98");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=80.46,217.79");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=141.28,198.85");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=130.21,196.72");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=153.75,222.88");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=249.31,268.65");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=165.54,319.81");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=186.90,291.68");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=125.84,221.94");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=52.40,328.13");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=216.62,392.84");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=71.39,276.55");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=30.57,396.57");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=53.20,235.07");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=63.70,352.89");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=43.59,269.53");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=203.32,248.37");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=245.54,301.33");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=93.04,136.91");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=56.05,246.46");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=89.67,184.86");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=103.54,214.50");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=259.73,340.41");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=160.59,286.18");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=111.89,374.13");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=121.19,388.61");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=116.16,302.36");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=91.56,377.16");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=98.11,277.36");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=33.39,334.30");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=0.71,287.32");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=4.14,253.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=24.29,287.44");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=213.30,154.44");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=285.22,146.75");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=25.19,257.18");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=16.16,221.00");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=55.74,192.68");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=175.66,194.35");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=149.68,242.54");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=91.70,328.89");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=143.17,354.39");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=147.23,258.83");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=90.09,318.79");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=225.03,325.05");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=42.68,379.53");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=40.93,394.69");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=51.78,279.39");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=104.00,225.76");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=17.40,185.94");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=235.13,231.86");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=272.60,168.34");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=67.40,260.30");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=51.19,154.74");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=142.60,226.03");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=160.96,190.34");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=209.90,297.58");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=144.66,287.18");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=139.13,312.66");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=78.12,319.87");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=84.65,283.63");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=172.06,258.60");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=4.89,323.40");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=12.92,335.04");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=30.02,356.65");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=105.00,330.29");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=40.82,324.72");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=228.64,334.40");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=293.92,155.60");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=43.69,163.17");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=107.20,194.55");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=118.11,236.04");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=103.17,137.58");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=250.43,334.10");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=129.42,238.50");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=126.66,333.56");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=71.58,309.79");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=80.06,356.88");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=136.94,301.25");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=70.05,371.08");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=71.15,384.98");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=94.11,259.74");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=57.27,338.21");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=114.49,246.64");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=195.68,173.05");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=188.42,203.80");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=112.90,140.81");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=7.78,197.69");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=130.05,267.85");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=228.48,197.83");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=302.59,264.34");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=89.21,305.44");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=81.61,338.12");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=187.22,259.08");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=22.01,327.05");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=174.10,366.68");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=123.55,288.71");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=29.64,312.27");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=18.18,202.57");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=22.92,161.29");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=59.49,287.77");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=186.94,313.00");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=326.80,225.46");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=121.39,209.59");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=62.23,230.26");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=12.78,246.34");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=140.10,172.05");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=196.86,318.77");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=162.45,274.98");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=181.38,345.32");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=127.36,258.19");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=142.82,341.83");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=176.61,320.52");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=92.90,358.88");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=46.13,341.11");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=9.09,235.00");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=66.02,212.00");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=81.88,244.83");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=302.51,240.63");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=291.40,274.35");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=152.11,182.85");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=109.73,292.00");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=165.19,247.95");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=238.02,154.15");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=213.56,232.30");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=155.76,265.57");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=195.48,391.68");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=190.26,334.47");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=81.43,267.21");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=130.33,372.30");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=2.21,365.06");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=3.72,383.65");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=43.12,235.20");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=27.74,216.70");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=58.18,374.31");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=259.02,245.15");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=263.57,227.47");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=84.75,170.30");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=33.26,166.79");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=140.79,187.21");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=201.66,231.12");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=218.41,212.70");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=160.40,214.39");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=95.17,341.47");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=133.82,286.98");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=77.62,398.51");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=165.00,376.89");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=69.15,333.55");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=104.35,354.02");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=37.82,211.22");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=18.74,300.54");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=42.37,192.11");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=192.68,236.53");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=210.65,274.50");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=17.55,138.35");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=71.53,251.02");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=147.89,321.08");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=168.66,202.95");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=253.38,319.96");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=176.37,287.67");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=152.80,299.53");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=97.39,289.41");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=98.19,398.29");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=154.57,342.65");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=10.60,346.83");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=18.53,379.18");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=62.66,269.43");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=21.10,273.48");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=54.48,218.33");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=231.26,294.29");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=236.38,216.35");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=142.29,153.28");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=44.65,179.13");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=183.19,246.55");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=199.78,278.13");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=200.49,265.34");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=120.82,186.08");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=227.17,312.17");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=103.81,307.61");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=163.32,303.64");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=106.90,387.54");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=33.06,237.74");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=48.72,359.66");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=5.23,210.38");
    }

}

