
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn1-2
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
        @display("p=120.00,421.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=112.36,408.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=92.35,413.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=71.56,447.99");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=101.64,467.01");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=134.90,517.62");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=119.33,510.10");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=129.68,533.93");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=157.71,477.07");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=151.33,526.22");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=184.97,582.40");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=220.54,621.67");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=255.74,709.85");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=240.60,713.39");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=251.93,782.57");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=292.19,767.21");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=310.15,796.15");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=307.71,767.05");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=371.17,722.73");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=316.21,699.68");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=331.14,670.94");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=248.91,666.30");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=264.30,617.84");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=283.74,641.86");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=213.18,705.99");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=273.82,689.92");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=349.87,663.52");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=301.12,613.53");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=356.95,652.28");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=343.81,673.30");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=421.58,732.67");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=500.26,693.02");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=508.51,765.84");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=496.64,729.75");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=482.87,705.57");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=406.04,666.07");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=334.23,743.45");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=316.48,665.06");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=327.60,653.58");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=284.84,732.40");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=272.31,767.38");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=254.01,745.44");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=198.53,792.07");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=239.00,744.50");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=264.50,728.09");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=267.28,740.05");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=279.65,783.68");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=251.24,721.84");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=202.94,660.51");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=288.29,599.78");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=236.40,644.86");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=205.94,678.54");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=259.20,645.32");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=406.70,655.74");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=423.74,637.98");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=404.68,580.94");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=374.40,639.20");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=358.87,597.14");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=343.03,638.44");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=316.14,602.68");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=325.58,631.22");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=443.15,712.68");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=373.25,767.58");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=332.85,763.50");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=345.98,752.71");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=431.11,745.07");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=391.41,705.55");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=414.46,694.36");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=476.46,761.29");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=467.67,789.32");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=455.72,725.91");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=415.30,619.10");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=417.57,707.93");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=458.48,741.85");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=446.52,730.83");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=466.52,683.35");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=520.66,732.29");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=503.53,666.53");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=532.14,638.24");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=627.93,645.28");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=578.13,663.76");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=656.90,708.36");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=729.41,764.07");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=730.99,725.06");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=715.68,670.22");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=676.58,691.37");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=640.78,718.97");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=553.73,724.58");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=465.51,751.16");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=396.97,732.49");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=402.30,768.78");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=359.11,775.63");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=339.79,774.26");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=347.68,722.66");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=483.05,686.46");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=440.18,739.44");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=435.09,776.30");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=493.80,781.90");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=391.51,784.12");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=383.71,791.53");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=371.05,733.12");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=423.49,677.59");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=422.05,799.86");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=389.43,717.71");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=394.09,669.26");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=357.42,634.79");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=430.52,599.66");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=414.74,586.01");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=410.80,558.66");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=347.95,594.66");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=270.36,550.54");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=207.24,606.28");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=192.27,554.27");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=209.92,552.06");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=113.30,535.13");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=131.59,592.20");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=182.96,674.41");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=124.93,660.87");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=155.39,643.05");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=167.65,715.84");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=184.94,687.70");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=243.64,682.97");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=271.33,627.89");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=236.43,579.66");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=281.19,614.31");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=215.80,643.68");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=205.59,564.12");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=337.88,655.80");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=246.71,580.77");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=224.20,499.54");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=195.40,542.46");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=245.16,551.13");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=171.80,491.72");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=160.91,498.38");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=143.88,512.12");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=80.81,490.58");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=163.59,517.89");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=92.97,508.16");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=88.52,559.84");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=120.93,631.37");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=175.84,648.16");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=254.26,610.43");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=231.61,595.03");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=181.17,607.52");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=206.06,621.79");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=195.56,613.30");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=240.66,608.78");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=313.37,621.37");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=310.30,591.96");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=324.66,596.13");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=287.04,537.41");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=328.80,580.25");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=164.14,701.32");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=216.01,683.80");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=280.95,663.57");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=307.89,652.09");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=302.09,638.39");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=386.54,628.60");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=459.88,593.32");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=469.48,576.79");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=511.24,634.63");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=535.74,606.82");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=576.65,569.00");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=585.18,561.13");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=558.96,585.24");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=564.07,519.83");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=607.36,457.17");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=602.73,484.19");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=542.49,507.40");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=531.07,573.02");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=610.96,595.56");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=623.70,614.48");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=628.80,593.72");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=642.15,601.36");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=669.94,515.57");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=732.41,533.17");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=712.72,584.11");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=786.68,636.45");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=700.04,629.07");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=689.45,579.94");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=639.86,591.31");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=601.87,608.42");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=496.70,480.94");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=534.34,447.24");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=585.01,452.63");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=551.07,422.36");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=492.77,437.27");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=484.00,500.27");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=450.09,406.58");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=442.91,485.99");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=516.15,479.69");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=424.29,393.72");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=499.84,410.74");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=490.21,400.46");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=490.32,369.87");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=363.14,434.79");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=365.41,382.60");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=434.52,383.01");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=453.08,376.50");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=429.14,336.48");
    }

}

