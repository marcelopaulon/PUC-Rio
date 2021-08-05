
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_1
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
        @display("p=93.03,146.51");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=159.93,205.08");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=202.27,244.54");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=188.14,342.86");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=201.78,376.10");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=109.16,344.68");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=93.01,361.36");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=133.02,341.40");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=114.14,363.04");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=60.93,332.54");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=106.12,261.78");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=121.80,218.12");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=170.92,303.41");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=162.51,289.36");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=122.42,234.78");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=216.91,224.89");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=237.84,206.71");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=291.89,186.19");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=245.71,198.29");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=265.59,195.76");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=239.02,264.21");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=235.01,249.62");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=208.19,286.80");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=244.22,304.14");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=289.43,355.23");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=210.56,416.67");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=246.33,461.21");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=235.20,410.83");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=161.96,313.65");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=133.23,430.52");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=75.39,423.82");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=128.65,491.67");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=73.18,470.93");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=72.69,393.10");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=54.17,325.00");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=94.84,235.46");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=193.15,277.75");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=216.92,238.93");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=225.00,231.28");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=248.09,221.31");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=288.59,224.89");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=270.43,255.36");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=227.88,274.13");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=245.23,287.23");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=255.33,254.51");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=220.31,296.20");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=280.26,372.27");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=275.30,408.84");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=317.71,342.38");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=111.95,15.64");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=76.17,126.99");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=188.35,235.11");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=263.87,300.44");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=182.56,267.55");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=206.71,351.41");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=127.39,383.71");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=70.41,356.64");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=158.98,303.35");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=89.49,371.68");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=80.24,295.69");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=103.80,229.38");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=93.93,123.11");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=105.30,371.05");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=133.66,193.87");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=140.96,186.48");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=197.05,298.28");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=236.70,193.78");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=316.51,261.10");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=188.56,170.62");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=313.57,118.35");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=226.07,216.01");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=148.35,265.63");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=127.74,284.82");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=214.43,342.98");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=259.47,274.82");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=172.76,492.09");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=229.42,449.05");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=165.24,457.52");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=180.02,318.19");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=154.83,495.66");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=84.23,435.69");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=82.15,537.72");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=109.35,413.91");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=132.17,357.86");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=72.73,308.98");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=147.61,213.06");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=175.93,218.92");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=236.49,231.82");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=182.74,281.32");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=219.90,202.54");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=260.68,232.27");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=285.20,247.06");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=162.91,257.36");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=207.74,257.57");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=317.49,311.43");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=250.96,391.00");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=262.86,371.03");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=274.91,419.19");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=308.85,336.82");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=92.42,168.05");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=57.85,232.73");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=96.14,201.35");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=154.87,280.10");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=217.77,399.13");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=193.38,393.30");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=186.38,294.35");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=2.04,319.88");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=50.48,284.98");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=202.35,363.91");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=39.42,373.16");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=78.85,263.26");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=72.16,166.11");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=164.72,365.33");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=142.49,308.24");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=31.76,207.19");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=146.58,250.62");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=150.58,158.09");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=236.03,156.58");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=280.03,286.69");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=220.21,141.71");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=189.23,309.33");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=303.23,232.36");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=203.38,314.92");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=310.90,288.68");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=228.95,329.98");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=214.82,492.51");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=229.35,462.62");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=269.39,385.58");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=148.85,292.51");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=120.29,444.43");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=24.32,425.03");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=118.89,559.50");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=103.67,396.90");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=115.27,327.25");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=32.02,347.92");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=96.25,289.36");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=174.73,260.02");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=261.36,169.07");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=188.70,216.24");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=300.32,262.59");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=270.59,223.91");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=297.37,315.48");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=218.39,262.38");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=289.79,258.01");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=249.34,266.43");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=231.78,288.56");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=272.18,363.88");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=247.83,446.47");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=310.99,415.16");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=170.55,55.48");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=173.26,153.12");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=150.21,199.50");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=131.77,178.07");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=110.47,316.54");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=219.72,325.54");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=137.72,405.85");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=155.43,379.08");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=152.56,367.99");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=47.67,345.71");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=42.66,383.94");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=54.32,216.88");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=206.27,199.28");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=228.52,303.64");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=186.71,332.90");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=57.31,202.88");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=243.37,240.92");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=322.20,189.40");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=355.56,176.33");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=310.29,137.67");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=246.23,177.21");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=251.05,334.87");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=235.14,176.61");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=162.80,245.53");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=229.07,314.39");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=322.30,351.73");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=262.61,343.10");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=271.34,506.60");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=210.70,383.86");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=100.96,385.97");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=208.53,463.01");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=57.47,519.00");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=141.22,510.34");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=43.11,404.15");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=97.47,453.36");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=9.76,404.97");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=41.86,195.11");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=208.51,327.19");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=251.56,189.74");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=279.41,210.94");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=264.80,285.81");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=379.73,249.99");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=309.20,302.51");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=238.96,322.75");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=240.54,386.37");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=221.14,172.06");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=301.09,346.92");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=314.65,368.43");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=364.75,407.90");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=332.35,343.07");
    }

}

