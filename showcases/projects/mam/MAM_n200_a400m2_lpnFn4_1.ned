
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_1
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
        @display("p=28.30,308.23");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=71.51,327.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=19.35,260.31");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=16.30,301.30");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=13.09,353.92");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=78.69,345.76");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=154.78,343.09");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=111.39,328.67");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=94.20,360.94");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=96.92,280.62");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=67.25,261.68");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=70.94,245.71");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=46.51,315.87");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=69.02,339.17");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=124.01,373.58");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=113.64,360.24");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=163.32,334.37");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=186.60,278.54");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=265.92,338.83");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=342.08,388.26");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=334.33,323.59");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=287.12,336.89");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=368.32,307.14");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=396.46,263.39");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=364.34,265.82");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=335.43,208.58");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=388.88,270.67");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=339.77,294.84");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=251.66,249.32");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=225.10,247.87");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=286.94,315.17");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=240.94,367.49");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=242.79,328.10");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=232.27,272.00");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=264.28,289.44");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=246.90,263.72");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=235.33,224.75");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=306.48,184.69");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=236.97,125.11");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=308.85,150.43");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=311.26,123.30");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=348.46,113.96");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=310.93,111.31");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=266.07,95.14");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=221.99,143.96");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=205.25,68.60");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=214.34,64.12");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=216.98,134.71");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=145.48,116.56");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=108.12,280.26");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=24.60,373.86");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=33.61,356.04");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=25.10,274.58");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=88.07,233.45");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=44.69,354.37");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=154.81,319.74");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=168.79,370.73");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=153.67,367.70");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=110.98,294.13");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=76.88,193.43");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=150.24,261.41");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=122.88,207.06");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=51.03,324.93");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=56.34,333.52");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=94.08,333.39");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=112.49,389.45");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=179.20,237.46");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=179.40,258.41");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=250.38,388.36");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=393.02,338.70");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=323.14,308.61");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=368.97,324.16");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=379.80,284.19");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=373.47,237.31");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=331.30,337.44");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=369.76,220.03");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=360.78,334.60");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=329.19,358.31");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=336.52,227.32");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=139.81,217.18");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=307.37,378.29");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=236.27,346.10");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=165.82,296.18");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=217.18,304.62");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=204.37,214.36");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=253.15,164.39");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=242.95,160.09");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=393.12,195.96");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=194.51,138.26");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=364.94,155.75");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=342.06,88.34");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=353.82,81.75");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=282.90,76.79");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=291.85,50.69");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=216.48,233.48");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=222.67,86.23");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=184.82,107.97");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=128.41,156.25");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=168.20,41.44");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=119.74,283.47");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=55.63,349.53");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=62.72,383.02");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=72.04,308.87");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=46.29,335.14");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=32.00,380.62");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=14.79,386.33");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=136.19,265.12");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=181.12,345.29");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=98.41,389.37");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=42.17,276.79");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=62.12,232.62");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=161.35,211.68");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=25.10,288.40");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=31.06,247.53");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=190.69,381.72");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=166.15,283.33");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=227.06,312.51");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=256.42,282.79");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=230.76,363.88");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=360.78,379.64");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=269.35,369.54");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=288.78,360.97");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=338.32,247.39");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=319.64,226.72");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=295.34,291.13");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=287.57,193.95");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=360.88,205.42");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=319.79,297.96");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=207.18,276.41");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=280.26,271.67");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=345.21,335.67");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=193.89,370.71");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=216.38,330.48");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=253.64,198.80");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=267.02,306.12");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=322.16,261.55");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=193.80,173.28");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=362.07,125.12");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=227.04,130.81");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=266.54,165.99");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=306.64,27.83");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=314.02,100.72");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=329.51,48.48");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=282.69,100.76");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=242.28,147.41");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=230.89,97.79");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=282.35,87.42");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=191.59,92.30");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=128.90,122.22");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=139.47,362.22");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=80.86,284.61");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=149.24,377.02");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=15.36,222.83");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=46.78,245.57");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=65.77,298.41");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=68.00,280.78");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=104.16,310.34");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=14.52,338.73");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=167.26,349.83");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=20.65,238.56");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=55.34,294.95");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=118.33,216.61");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=45.47,399.02");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=44.46,295.33");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=189.57,360.72");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=123.24,355.49");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=229.51,382.47");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=213.69,249.90");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=278.86,297.37");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=391.78,301.69");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=262.31,354.25");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=193.64,319.68");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=324.27,278.89");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=390.04,237.34");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=353.56,262.78");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=383.38,229.05");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=346.65,315.95");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=286.20,371.22");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=237.53,178.69");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=166.81,228.84");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=356.67,344.90");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=200.29,397.18");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=232.82,326.16");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=152.65,290.32");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=309.28,275.93");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=256.75,314.84");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=227.79,231.74");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=288.79,176.79");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=234.57,108.33");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=316.94,181.78");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=270.27,111.06");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=364.69,138.77");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=290.21,154.89");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=207.11,141.06");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=182.16,182.08");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=189.79,76.24");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=183.51,50.91");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=219.52,186.40");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=163.88,186.64");
    }

}

