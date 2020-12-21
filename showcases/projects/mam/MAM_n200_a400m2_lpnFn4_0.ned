
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a400m2_lpnFn4_0
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=26.23,127.39");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=54.94,120.92");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=7.23,113.34");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=77.78,183.61");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=40.03,151.12");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=62.38,186.49");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=12.98,227.67");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=25.58,174.73");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=18.76,164.56");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=141.42,166.69");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=44.19,181.97");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=4.91,168.30");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=2.26,265.75");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=50.51,273.46");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=7.98,351.08");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=19.66,335.64");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=48.75,331.29");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=76.18,305.84");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=35.84,283.36");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=4.20,255.14");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=35.36,266.13");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=14.56,299.36");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=26.11,322.02");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=103.53,353.03");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=83.26,366.74");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=116.40,366.45");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=119.28,381.26");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=193.72,370.28");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=204.72,367.58");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=141.27,386.91");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=218.35,363.54");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=210.55,331.97");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=152.28,283.18");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=136.40,283.17");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=218.01,282.85");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=228.34,272.67");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=161.84,268.76");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=162.65,255.56");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=154.08,227.41");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=139.30,147.86");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=113.33,170.87");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=134.69,187.86");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=170.88,192.71");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=196.89,226.33");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=160.42,153.83");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=185.19,117.57");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=249.22,148.19");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=196.31,200.88");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=117.61,181.46");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=30.15,105.76");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=60.36,94.54");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=112.72,195.85");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=12.47,139.61");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=73.26,170.25");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=37.66,209.37");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=111.12,256.91");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=87.84,196.13");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=2.42,195.17");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=67.72,158.10");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=111.41,143.90");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=98.39,202.91");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=31.98,196.35");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=24.94,271.09");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=121.34,320.75");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=83.91,337.92");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=101.55,325.50");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=117.58,298.75");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=64.55,269.62");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=22.50,256.43");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=69.71,207.37");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=26.89,298.39");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=31.20,311.72");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=22.87,282.74");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=102.26,384.21");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=126.96,351.38");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=147.09,351.17");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=160.79,334.73");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=247.04,384.02");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=189.72,330.13");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=151.01,341.60");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=215.56,376.45");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=173.40,240.13");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=162.29,280.15");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=144.60,253.90");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=271.86,236.78");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=240.31,250.07");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=202.17,346.37");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=133.84,205.10");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=97.39,263.71");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=186.24,91.84");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=173.92,115.95");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=107.46,271.61");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=155.15,128.38");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=212.25,263.74");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=113.39,211.07");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=164.33,136.16");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=234.46,171.90");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=271.42,149.41");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=75.76,139.88");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=59.09,83.73");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=37.14,61.81");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=68.72,128.74");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=106.23,114.46");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=84.19,96.84");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=50.31,145.35");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=150.12,152.69");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=15.86,215.17");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=34.19,184.06");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=16.62,100.98");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=79.49,239.00");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=56.02,109.22");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=90.74,216.53");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=3.70,280.91");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=104.09,284.33");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=32.72,358.50");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=3.81,337.24");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=42.15,317.62");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=58.73,305.35");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=78.44,265.41");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=45.78,260.83");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=40.10,166.82");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=46.86,367.97");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=85.60,327.58");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=181.95,355.47");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=62.24,348.50");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=92.08,302.26");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=109.73,396.32");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=190.40,397.03");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=218.80,345.37");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=168.74,363.22");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=200.51,384.70");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=193.08,354.72");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=140.16,360.24");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=208.21,253.27");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=196.94,257.25");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=264.02,360.92");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=131.17,314.52");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=231.35,314.67");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=199.96,300.33");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=123.70,158.83");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=83.86,154.71");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=100.56,131.44");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=208.00,208.46");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=183.81,217.43");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=154.11,180.47");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=116.87,92.41");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=200.40,151.45");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=242.40,217.79");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=152.04,98.18");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=126.99,93.50");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=48.48,47.75");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=146.68,84.44");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=13.97,190.10");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=76.88,117.23");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=53.83,217.07");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=118.41,226.79");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=5.65,307.07");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=7.75,127.01");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=67.88,196.04");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=211.92,153.07");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=60.97,166.26");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=27.92,213.01");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=11.96,248.52");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=79.65,287.97");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=54.69,289.88");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=53.18,376.34");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=123.54,337.54");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=173.13,306.30");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=19.71,361.25");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=26.11,232.13");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=70.45,331.60");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=59.60,229.46");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=58.18,325.33");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=75.21,318.11");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=98.53,367.71");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=71.15,353.09");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=96.72,313.55");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=220.46,333.83");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=146.14,317.18");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=70.20,396.32");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=199.70,315.39");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=241.44,332.00");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=226.40,239.81");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=106.56,300.73");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=137.52,296.47");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=287.67,264.52");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=98.68,244.73");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=199.23,244.30");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=177.74,202.56");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=102.90,60.64");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=36.28,116.54");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=171.23,181.70");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=145.33,133.01");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=258.90,236.45");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=178.68,166.56");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=121.44,47.48");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=316.30,187.72");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=247.21,283.83");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=154.39,204.19");
    }

}

