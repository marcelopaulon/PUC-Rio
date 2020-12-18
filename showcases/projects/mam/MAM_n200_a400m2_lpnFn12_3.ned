
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn12_3
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
        @display("p=112.55,331.05");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=47.29,361.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=83.50,320.31");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=26.72,254.66");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=7.69,254.29");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=60.24,333.72");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=63.43,266.03");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=31.98,265.09");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=20.11,220.48");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=54.25,168.71");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=105.37,250.28");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=109.83,216.45");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=129.59,284.63");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=166.66,264.60");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=188.88,275.24");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=208.99,263.15");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=76.97,274.31");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=114.83,367.34");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=48.95,336.16");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=171.85,307.60");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=84.71,303.32");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=33.86,283.71");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=19.95,354.42");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=56.20,245.47");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=6.30,195.74");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=112.49,236.08");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=57.81,195.34");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=94.02,335.45");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=131.97,270.74");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=137.02,258.59");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=133.83,211.19");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=199.65,289.49");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=178.13,256.65");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=154.24,251.21");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=40.63,322.98");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=32.37,355.43");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=96.96,290.25");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=40.24,306.62");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=15.74,204.57");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=75.18,352.72");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=9.70,265.09");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=120.85,264.73");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=52.21,261.87");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=92.20,98.99");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=59.26,289.79");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=153.39,239.18");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=161.20,315.09");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=190.53,324.91");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=161.82,220.78");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=121.30,300.58");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=77.14,217.88");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=135.92,337.44");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=108.89,289.94");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=87.39,286.94");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=3.11,237.07");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=26.22,228.83");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=59.10,323.68");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=21.85,335.61");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=71.43,284.71");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=30.77,300.64");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=37.45,234.61");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=112.78,189.88");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=142.38,202.07");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=117.00,379.24");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=157.82,289.06");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=285.12,264.53");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=195.33,310.84");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=104.84,387.30");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=87.79,347.04");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=7.63,361.41");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=79.03,232.38");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=81.72,198.84");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=64.69,225.84");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=68.79,366.49");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=87.23,175.27");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=31.33,176.43");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=21.07,273.31");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=141.55,154.32");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=113.95,348.07");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=122.63,161.98");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=140.18,314.09");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=124.77,185.39");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=238.60,292.20");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=152.38,310.36");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=69.65,250.69");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=139.64,244.02");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=104.54,315.30");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=106.75,270.63");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=74.32,190.11");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=10.87,168.80");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=94.94,309.77");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=97.89,260.42");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=95.63,222.23");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=29.05,212.87");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=73.57,148.88");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=186.33,250.78");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=174.21,185.70");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=182.01,208.18");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=152.54,345.26");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=198.99,279.32");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=162.38,209.27");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=92.78,275.65");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=169.47,340.84");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=9.30,293.01");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=177.08,347.39");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=52.08,215.41");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=11.84,310.83");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=29.97,379.58");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=62.65,307.70");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=8.79,348.45");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=79.49,262.28");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=16.18,157.12");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=93.49,194.04");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=101.43,152.92");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=135.30,359.69");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=194.82,300.55");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=196.02,257.74");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=263.69,194.21");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=138.66,325.09");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=124.71,328.72");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=68.14,298.85");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=57.42,377.86");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=20.29,301.52");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=12.87,244.57");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=79.65,363.58");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=86.92,238.60");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=41.96,258.60");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=49.71,229.73");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=11.19,214.24");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=152.32,327.72");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=165.92,295.11");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=130.53,380.97");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=248.24,314.27");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=238.69,260.42");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=260.35,282.89");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=68.56,341.12");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=80.17,381.98");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=39.58,399.40");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=103.70,338.24");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=19.54,289.96");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=56.68,185.10");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=61.73,278.28");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=20.80,181.73");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=61.37,349.94");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=18.79,122.46");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=27.44,113.95");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=119.92,228.76");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=176.18,233.23");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=117.85,277.36");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=259.11,252.83");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=209.48,300.03");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=241.35,178.05");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=118.75,319.65");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=88.09,255.36");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=105.06,354.10");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=83.02,331.77");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=10.50,325.28");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=29.62,244.45");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=72.13,394.84");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=131.20,235.31");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=46.33,206.99");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=76.85,207.72");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=42.52,162.83");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=183.40,297.60");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=67.60,212.73");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=92.67,205.81");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=211.72,341.80");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=201.95,244.63");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=211.32,277.82");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=154.18,371.48");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=35.20,337.30");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=57.39,360.05");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=3.92,280.09");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=35.87,222.31");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=49.95,299.92");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=34.94,367.94");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=140.36,227.28");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=27.32,322.69");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=90.11,161.25");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=80.43,81.11");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=146.42,283.70");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=100.52,178.59");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=125.93,249.41");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=155.23,262.26");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=168.82,284.08");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=274.49,257.41");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=127.73,347.69");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=165.10,327.73");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=121.82,395.30");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=143.49,389.37");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=108.83,260.11");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=94.75,246.31");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=1.94,319.86");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=9.22,182.98");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=102.37,201.34");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=68.97,175.49");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=128.52,129.85");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=127.69,221.97");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=122.05,202.08");
    }

}

