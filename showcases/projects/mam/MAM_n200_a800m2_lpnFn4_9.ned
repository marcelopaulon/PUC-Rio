
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_9
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=67.59,691.46");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=56.70,704.86");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=44.85,718.51");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=62.28,724.75");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=95.99,770.99");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=45.18,692.17");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=60.71,748.30");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=85.91,770.49");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=24.60,726.51");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=7.48,731.67");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=5.83,696.38");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=90.50,676.53");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=162.87,669.05");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=102.91,676.77");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=107.12,657.28");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=106.58,737.23");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=90.74,758.76");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=89.71,744.65");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=138.30,753.17");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=149.69,761.39");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=166.90,760.22");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=264.42,769.44");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=278.28,767.78");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=239.73,677.84");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=259.95,699.88");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=245.83,731.47");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=167.69,793.54");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=124.58,761.68");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=148.05,711.49");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=187.22,682.20");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=207.18,624.75");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=200.04,709.82");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=165.91,698.55");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=171.24,687.62");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=177.98,647.03");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=218.17,708.30");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=208.92,700.46");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=262.09,630.20");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=268.53,540.80");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=256.52,521.05");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=250.22,506.18");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=223.20,525.53");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=181.26,535.17");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=178.43,576.54");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=153.14,505.14");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=176.47,457.84");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=213.33,449.76");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=203.67,480.60");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=197.81,575.28");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=39.79,766.20");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=75.99,704.78");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=36.35,705.37");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=70.72,792.31");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=132.34,707.01");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=102.35,794.87");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=79.35,672.59");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=107.05,750.57");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=60.09,797.48");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=30.87,761.08");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=45.05,747.56");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=14.89,663.38");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=114.82,674.28");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=241.66,663.35");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=168.96,729.02");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=149.49,691.22");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=73.44,726.29");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=129.88,783.87");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=124.68,733.93");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=138.52,716.14");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=151.60,730.02");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=168.03,746.62");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=290.41,783.30");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=218.38,742.99");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=325.24,685.51");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=322.37,730.80");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=243.49,698.11");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=220.53,798.81");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=132.21,740.95");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=158.10,619.30");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=176.54,700.92");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=183.49,549.13");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=231.95,693.44");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=211.57,781.63");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=249.08,654.24");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=176.90,711.41");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=284.52,759.65");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=216.11,720.12");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=220.09,668.87");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=272.80,554.31");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=289.48,531.59");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=294.47,497.79");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=279.14,593.41");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=204.71,567.31");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=188.48,484.34");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=123.92,445.03");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=228.96,409.88");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=190.62,384.03");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=233.26,439.36");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=282.97,544.09");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=52.01,761.83");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=96.25,720.88");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=1.58,760.79");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=10.87,645.82");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=116.55,703.02");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=66.71,737.27");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=3.60,706.67");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=28.82,736.80");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=16.15,708.15");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=11.77,744.94");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=24.42,702.32");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=48.82,619.85");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=136.79,616.97");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=119.84,721.80");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=92.22,664.86");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=103.87,616.03");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=96.06,783.08");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=113.49,773.09");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=185.18,745.11");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=122.62,794.50");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=189.39,710.61");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=147.66,778.58");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=260.19,758.34");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=238.54,770.57");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=204.01,668.98");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=278.61,715.12");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=260.84,740.03");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=208.05,759.00");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=59.84,769.19");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=201.94,769.35");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=281.13,671.41");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=191.44,623.02");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=252.91,771.50");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=168.95,776.32");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=164.01,712.07");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=190.17,635.92");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=277.82,643.77");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=200.43,691.26");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=345.03,676.56");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=248.18,476.21");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=240.45,497.33");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=204.94,514.70");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=213.27,528.68");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=220.72,502.50");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=159.92,495.36");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=164.74,440.08");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=175.99,500.82");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=185.43,443.46");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=202.46,455.74");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=231.11,536.05");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=83.94,687.18");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=129.91,649.33");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=79.77,651.75");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=50.94,787.30");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=80.98,788.39");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=68.73,778.33");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=49.77,670.84");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=69.38,761.56");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=11.47,767.45");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=8.06,721.65");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=79.24,715.11");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=16.87,679.44");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=12.98,627.65");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=152.62,638.91");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=149.97,676.94");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=65.58,620.39");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=184.43,727.82");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=129.75,696.36");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=95.97,732.63");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=185.97,762.16");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=78.36,744.90");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=222.68,782.93");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=301.72,787.14");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=242.23,752.03");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=272.59,741.83");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=304.82,697.76");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=201.41,736.96");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=114.40,788.35");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=34.99,785.19");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=120.98,685.59");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=154.77,740.30");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=147.70,623.20");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=278.89,732.07");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=253.72,683.19");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=216.54,730.64");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=177.55,663.30");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=199.60,751.55");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=205.53,726.06");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=331.61,609.03");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=244.66,530.87");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=245.57,580.90");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=249.74,433.54");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=222.28,614.60");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=263.29,504.88");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=165.89,567.08");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=82.35,488.74");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=237.03,462.00");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=165.09,417.88");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=216.92,468.58");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=138.76,534.58");
    }

}

