
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a400m2-lpnFn4-5
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
        @display("p=111.00,343.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=123.19,335.71");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=94.86,330.02");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=7.12,345.95");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=64.19,347.97");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=55.00,339.70");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=22.42,353.48");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=9.22,309.89");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=13.50,383.15");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=75.84,357.43");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=105.41,268.67");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=162.06,304.16");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=115.69,364.00");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=74.91,310.19");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=89.42,368.05");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=74.67,383.26");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=30.27,321.41");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=28.94,388.93");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=50.18,399.61");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=41.05,387.54");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=40.79,361.64");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=59.98,365.92");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=55.96,375.52");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=144.85,342.37");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=114.88,352.46");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=208.16,363.58");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=181.74,325.57");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=202.26,257.34");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=134.18,303.64");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=111.54,290.52");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=84.00,211.37");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=32.25,277.94");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=84.34,285.66");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=51.87,297.80");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=36.24,234.63");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=63.82,189.47");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=105.36,258.05");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=86.68,263.78");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=77.92,190.96");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=61.40,268.33");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=37.65,287.87");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=177.38,242.33");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=245.54,217.76");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=262.87,222.54");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=273.16,229.67");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=315.65,238.11");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=275.06,311.16");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=226.43,284.91");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=237.82,251.35");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=223.40,246.71");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=122.20,315.81");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=185.25,270.24");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=93.22,399.13");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=58.08,386.47");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=147.30,323.14");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=69.38,394.06");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=32.96,352.10");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=56.42,240.52");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=3.74,365.42");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=139.32,334.02");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=72.25,296.78");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=173.77,309.34");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=146.27,370.74");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=115.37,383.47");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=99.11,358.45");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=82.77,341.96");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=61.82,331.32");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=26.39,378.22");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=54.15,314.56");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=0.05,323.77");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=51.22,266.51");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=102.79,379.83");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=27.72,310.08");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=217.11,369.19");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=143.73,285.28");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=190.78,346.12");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=220.82,337.87");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=181.81,223.22");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=137.29,258.27");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=172.24,319.84");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=94.53,219.19");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=82.78,225.99");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=17.42,292.00");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=35.76,265.74");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=46.78,246.67");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=81.07,163.14");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=86.45,235.42");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=145.66,195.06");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=2.05,157.10");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=93.68,303.72");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=49.51,224.11");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=190.63,252.40");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=272.43,253.15");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=224.64,162.11");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=270.76,241.85");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=307.46,258.65");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=248.31,325.24");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=171.31,339.42");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=237.50,205.14");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=216.30,219.21");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=160.41,325.71");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=131.42,236.32");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=89.64,316.83");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=16.34,325.71");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=125.93,296.34");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=69.20,322.91");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=34.56,297.51");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=89.45,351.33");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=20.61,335.22");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=34.30,334.22");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=68.24,249.05");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=240.03,284.59");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=166.10,282.36");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=94.59,285.41");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=43.72,338.13");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=114.00,399.48");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=71.19,366.32");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=6.33,391.78");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=83.04,393.37");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=104.58,318.98");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=73.73,333.79");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=34.95,371.89");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=50.45,358.42");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=171.81,358.47");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=55.24,277.33");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=182.20,376.66");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=148.20,235.36");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=221.05,299.51");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=56.92,253.97");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=120.73,228.17");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=96.61,184.58");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=27.17,252.21");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=84.21,299.31");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=13.07,238.32");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=6.07,254.31");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=58.44,203.71");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=50.37,286.42");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=5.53,267.65");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=87.43,133.23");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=121.31,241.68");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=126.42,265.83");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=177.53,170.29");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=295.62,285.48");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=270.26,296.79");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=332.79,204.48");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=228.80,237.10");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=345.53,261.86");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=199.30,335.01");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=328.02,291.33");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=184.29,161.24");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=192.73,300.14");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=120.64,285.25");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=170.03,269.58");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=84.89,328.26");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=37.30,255.78");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=46.62,324.54");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=10.58,276.94");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=2.02,295.17");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=19.02,393.91");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=13.33,360.40");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=179.15,296.36");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=212.38,277.63");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=138.51,383.72");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=73.35,260.37");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=108.47,302.77");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=158.52,395.39");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=36.43,398.92");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=88.67,384.18");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=25.13,363.67");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=126.02,366.26");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=131.62,374.66");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=3.81,335.10");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=118.98,373.83");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=137.73,362.08");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=148.79,259.90");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=196.19,373.27");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=114.50,276.13");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=238.98,234.65");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=152.00,305.64");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=95.16,273.44");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=118.54,179.41");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=71.29,282.87");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=138.27,247.24");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=29.38,200.92");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=1.19,226.08");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=100.38,99.93");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=121.08,189.25");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=51.72,182.46");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=102.39,245.98");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=118.98,200.10");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=10.16,210.30");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=197.87,268.00");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=270.87,279.43");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=250.94,189.05");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=261.18,203.01");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=275.29,214.24");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=263.82,309.53");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=191.72,361.36");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=300.65,184.12");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=159.80,197.11");
    }

}

