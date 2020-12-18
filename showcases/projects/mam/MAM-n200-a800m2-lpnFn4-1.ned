
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn4-1
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
        @display("p=227.00,709.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=251.23,659.34");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=222.19,680.82");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=176.13,726.57");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=153.68,735.73");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=210.56,787.76");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=160.73,715.04");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=103.46,752.22");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=88.72,749.88");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=91.65,737.96");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=177.59,710.21");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=151.85,666.52");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=242.98,680.48");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=232.04,602.13");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=206.14,612.41");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=262.78,625.86");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=269.90,607.41");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=299.16,671.15");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=314.19,646.19");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=328.16,565.81");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=315.86,530.38");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=389.05,510.74");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=384.01,525.20");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=375.43,497.94");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=352.03,521.42");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=290.55,520.36");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=284.97,482.96");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=220.66,458.60");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=159.63,439.83");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=127.63,414.31");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=130.48,395.08");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=114.75,409.26");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=83.16,421.08");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=160.29,369.93");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=69.30,403.27");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=26.50,336.65");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=31.69,362.78");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=12.00,303.90");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=36.26,273.15");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=86.41,189.10");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=74.93,155.81");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=66.34,218.78");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=56.48,254.29");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=72.81,308.67");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=37.96,319.85");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=19.36,329.59");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=34.51,343.91");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=26.13,321.92");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=45.30,281.06");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=40.69,290.45");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=187.95,684.73");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=264.81,572.92");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=238.23,637.34");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=134.73,743.67");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=106.41,685.44");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=209.68,746.70");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=122.49,756.88");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=141.87,798.17");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=45.03,703.31");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=76.47,759.91");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=243.28,730.04");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=94.44,658.70");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=170.73,702.53");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=204.02,559.23");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=114.49,599.53");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=292.37,611.54");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=269.37,507.92");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=295.26,657.17");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=313.35,699.52");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=333.33,585.59");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=366.61,551.38");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=446.27,430.05");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=366.30,477.72");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=312.10,516.11");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=449.60,524.96");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=270.72,469.43");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=296.45,556.44");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=153.35,525.12");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=199.36,429.13");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=207.21,458.26");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=112.71,380.61");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=184.79,404.37");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=88.81,381.24");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=177.72,389.08");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=85.85,492.92");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=62.58,378.05");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=28.12,291.27");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=52.70,368.48");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=58.70,273.25");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=155.27,214.11");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=63.77,134.53");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=148.28,202.49");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=69.73,296.83");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=89.82,235.75");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=56.04,301.00");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=102.88,337.30");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=103.31,284.86");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=47.70,356.41");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=5.52,292.00");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=3.20,266.17");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=292.19,770.53");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=203.04,656.97");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=214.36,674.48");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=116.46,778.15");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=164.50,736.05");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=278.82,775.98");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=227.56,730.58");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=172.22,777.66");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=66.98,727.37");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=143.44,723.80");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=160.56,683.45");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=110.99,625.86");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=281.33,700.62");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=217.85,600.44");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=216.05,632.08");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=329.23,686.46");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=268.56,643.57");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=236.91,653.72");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=336.75,696.35");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=327.03,510.42");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=337.65,509.96");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=418.53,581.39");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=446.08,459.30");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=413.92,415.72");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=445.26,536.35");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=344.95,487.46");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=290.38,541.44");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=232.84,469.93");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=201.72,486.21");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=43.45,418.04");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=198.65,464.03");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=168.74,407.79");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=29.66,424.40");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=143.07,345.27");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=52.78,391.63");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=68.58,342.11");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=108.50,324.55");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=28.54,212.00");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=22.55,278.76");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=85.62,174.59");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=144.45,86.32");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=19.14,178.51");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=39.79,180.27");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=34.94,262.37");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=62.74,285.05");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=87.93,364.81");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=18.75,428.22");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=37.09,395.58");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=88.39,246.58");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=100.70,212.44");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=262.10,753.72");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=194.05,632.61");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=213.61,704.13");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=223.44,694.26");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=200.29,762.00");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=282.27,765.75");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=167.02,789.99");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=121.11,673.74");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=76.75,725.18");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=56.60,746.26");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=186.37,750.52");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=95.87,618.73");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=281.88,744.75");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=175.52,554.57");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=183.22,629.33");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=356.09,623.59");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=354.50,607.44");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=345.69,629.84");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=290.24,717.88");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=312.02,574.51");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=287.85,587.46");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=332.30,531.36");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=371.90,584.17");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=394.01,437.59");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=361.72,562.15");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=251.10,571.67");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=293.83,433.11");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=242.49,483.57");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=191.48,413.92");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=216.17,368.94");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=88.33,315.79");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=146.57,334.96");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=47.08,480.75");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=194.69,299.29");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=103.94,457.32");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=56.25,333.67");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=2.10,355.59");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=17.80,254.70");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=83.28,279.88");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=72.94,206.30");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=151.80,100.76");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=87.31,264.65");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=145.52,289.91");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=96.35,328.61");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=48.11,227.61");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=6.81,245.71");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=73.34,374.41");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=120.80,346.69");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=47.58,270.38");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=75.75,244.02");
    }

}

