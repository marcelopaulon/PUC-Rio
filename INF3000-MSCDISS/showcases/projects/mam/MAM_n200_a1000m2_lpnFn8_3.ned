
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn8_3
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
        @display("p=91.48,125.99");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=166.64,149.37");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=145.98,113.85");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=159.05,155.95");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=161.31,201.14");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=152.09,184.08");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=112.23,190.15");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=185.60,244.14");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=108.32,285.32");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=62.73,349.30");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=26.08,377.39");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=36.88,357.29");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=2.17,379.15");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=15.82,421.92");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=41.19,411.25");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=126.77,399.95");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=102.88,346.70");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=129.34,334.81");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=155.85,417.58");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=171.91,440.93");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=206.26,477.35");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=216.09,417.71");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=280.22,479.56");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=201.57,453.88");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=109.75,131.69");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=71.03,122.21");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=176.79,158.71");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=205.17,65.58");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=168.96,228.34");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=130.84,237.85");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=79.67,148.18");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=146.29,265.74");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=147.73,174.12");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=173.37,287.96");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=30.23,410.28");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=23.09,361.35");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=66.77,297.34");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=65.98,308.46");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=16.23,461.13");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=71.21,471.66");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=116.41,456.91");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=51.40,380.70");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=138.70,328.63");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=189.26,386.31");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=162.15,393.88");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=135.21,530.52");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=226.73,407.12");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=301.12,508.97");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=187.72,506.97");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=101.62,166.20");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=119.23,221.03");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=181.86,192.44");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=183.14,84.33");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=189.24,145.27");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=141.43,222.28");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=175.35,181.46");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=109.20,157.28");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=251.13,237.50");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=107.05,258.56");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=33.64,340.81");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=24.23,350.51");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=81.78,306.36");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=87.20,408.68");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=30.98,390.31");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=126.36,428.28");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=118.32,410.86");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=4.36,363.06");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=51.68,358.29");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=72.70,435.58");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=253.20,444.04");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=217.41,482.53");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=164.20,430.68");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=259.02,469.21");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=298.46,472.95");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=139.31,166.85");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=145.45,67.21");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=153.54,146.77");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=184.05,174.49");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=197.77,111.17");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=190.36,231.34");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=200.99,186.15");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=129.98,128.24");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=196.31,153.09");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=132.49,197.34");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=25.65,322.00");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=2.69,401.34");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=30.89,435.29");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=96.29,355.33");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=52.40,458.06");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=70.36,394.09");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=138.09,400.69");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=76.40,338.09");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=76.88,368.71");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=98.52,484.05");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=172.26,452.73");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=286.43,467.05");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=284.79,429.80");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=235.58,471.70");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=252.38,376.75");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=109.66,107.64");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=37.10,91.99");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=135.55,102.14");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=148.94,124.02");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=251.48,192.41");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=164.46,238.91");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=134.32,154.35");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=92.56,230.80");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=160.88,166.94");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=96.62,287.04");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=157.84,347.97");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=104.58,320.62");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=17.72,303.32");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=40.66,447.93");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=9.85,447.18");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=54.22,411.33");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=179.90,341.75");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=138.15,372.17");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=112.64,364.35");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=185.46,487.98");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=146.72,410.30");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=289.45,520.51");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=249.36,432.05");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=269.26,480.25");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=236.89,531.59");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=175.48,71.71");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=134.14,91.43");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=194.09,194.35");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=139.93,136.24");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=218.38,186.87");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=119.48,263.21");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=234.21,170.89");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=68.76,216.38");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=244.94,260.77");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=161.04,336.80");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=65.67,337.56");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=49.00,422.82");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=17.21,340.44");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=88.32,368.69");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=40.58,377.10");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=62.81,500.37");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=161.15,382.40");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=77.98,290.66");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=116.13,249.90");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=181.53,447.83");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=145.98,393.16");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=281.05,419.54");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=205.64,464.58");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=304.50,451.95");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=227.17,428.69");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=84.22,66.63");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=56.38,123.71");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=218.20,202.12");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=211.84,52.69");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=164.04,189.98");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=215.17,173.59");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=139.01,185.82");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=121.05,156.17");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=246.33,202.32");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=46.41,300.84");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=1.26,307.99");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=92.67,387.34");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=31.15,331.02");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=59.94,397.98");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=19.06,404.90");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=104.97,390.33");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=141.44,443.96");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=57.55,434.31");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=218.18,347.21");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=103.12,452.69");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=160.53,474.79");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=257.70,513.04");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=212.82,398.79");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=281.13,391.08");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=221.53,458.58");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=160.98,139.98");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=68.82,52.23");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=221.02,163.41");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=186.86,28.53");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=204.20,232.72");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=204.23,215.67");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=97.45,153.50");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=176.19,128.68");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=271.93,240.02");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=58.67,317.38");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=43.46,312.26");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=69.20,325.26");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=119.38,392.93");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=49.63,397.39");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=26.77,425.55");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=36.82,459.09");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=42.75,348.12");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=116.14,316.28");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=122.69,373.00");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=151.45,434.88");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=184.60,421.28");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=196.42,494.79");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=248.11,396.35");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=263.56,458.98");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=138.59,465.80");
    }

}

