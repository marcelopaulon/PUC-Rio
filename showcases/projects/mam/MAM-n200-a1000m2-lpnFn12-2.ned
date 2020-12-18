
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn12-2
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
        @display("p=531.00,828.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=457.29,763.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=469.34,696.11");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=407.78,724.05");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=326.59,752.31");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=336.69,693.35");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=290.85,722.78");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=304.82,701.72");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=376.64,692.32");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=380.84,637.85");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=312.10,622.60");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=344.72,626.35");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=347.13,640.10");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=370.64,732.16");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=461.45,719.41");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=396.03,693.11");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=440.05,623.26");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=516.84,776.34");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=415.18,762.00");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=448.45,788.51");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=393.87,819.58");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=313.30,778.25");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=329.84,722.53");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=331.23,712.47");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=378.78,720.57");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=422.81,631.58");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=457.49,593.01");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=298.34,638.32");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=331.69,592.84");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=277.68,650.22");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=318.44,687.58");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=444.95,689.88");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=461.06,643.01");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=386.72,585.51");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=453.73,868.23");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=504.76,795.59");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=470.07,665.30");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=434.57,703.67");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=366.63,691.38");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=302.94,651.30");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=269.93,711.83");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=265.82,788.41");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=420.80,773.68");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=314.36,666.70");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=283.23,540.26");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=323.78,657.10");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=416.56,675.64");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=443.27,773.25");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=393.68,785.67");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=417.65,736.23");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=476.44,613.68");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=617.35,821.68");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=486.69,797.61");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=483.71,683.81");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=404.80,764.91");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=287.18,744.82");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=332.90,793.13");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=369.93,760.81");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=236.00,632.27");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=403.13,600.55");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=327.89,607.75");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=316.58,644.58");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=396.77,645.83");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=325.32,578.16");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=398.53,776.61");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=424.20,750.16");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=367.56,631.58");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=438.62,661.66");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=497.81,873.90");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=492.98,775.54");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=444.30,736.74");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=377.56,661.38");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=344.21,839.69");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=306.51,726.30");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=297.86,715.14");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=323.92,740.86");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=394.49,630.98");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=445.35,638.04");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=261.13,584.75");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=407.76,690.09");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=334.60,621.96");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=323.75,696.71");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=485.50,701.75");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=443.51,673.10");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=360.70,674.90");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=484.90,818.83");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=542.68,790.41");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=501.05,730.77");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=344.49,708.91");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=362.55,719.77");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=364.81,641.85");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=244.25,722.06");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=248.65,753.50");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=339.08,678.80");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=388.96,652.68");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=258.05,684.91");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=335.84,634.19");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=275.69,584.86");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=399.24,806.45");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=521.41,760.05");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=474.58,734.70");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=519.00,674.07");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=552.76,859.93");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=495.83,696.99");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=429.38,685.75");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=431.13,735.02");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=310.27,844.90");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=291.38,669.90");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=273.66,737.66");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=274.88,700.50");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=391.92,679.95");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=386.78,555.70");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=339.25,574.45");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=263.75,636.32");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=305.19,614.74");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=291.89,759.99");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=431.42,716.68");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=441.81,717.39");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=442.66,599.75");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=564.81,814.39");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=458.56,790.78");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=473.55,684.77");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=445.08,758.72");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=403.75,786.65");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=327.54,682.53");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=258.63,725.54");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=307.27,688.44");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=451.11,721.41");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=372.81,671.25");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=316.95,557.33");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=356.50,660.41");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=357.76,634.63");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=318.34,760.71");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=474.29,764.62");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=409.57,666.07");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=527.63,623.57");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=555.89,809.64");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=466.81,773.58");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=452.16,709.60");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=485.46,731.24");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=273.54,802.52");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=379.53,707.64");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=288.29,706.94");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=252.51,700.16");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=378.52,754.25");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=352.57,580.24");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=322.35,632.05");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=304.91,586.78");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=290.75,562.04");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=338.02,748.21");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=484.87,648.28");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=391.56,606.68");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=432.43,640.96");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=543.73,898.97");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=457.74,746.77");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=511.40,711.49");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=354.71,696.19");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=248.34,783.48");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=375.07,651.21");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=225.75,762.26");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=397.40,737.17");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=412.71,705.23");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=293.47,607.73");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=300.10,626.48");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=315.85,531.89");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=368.23,569.59");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=281.03,772.52");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=520.48,788.18");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=390.05,618.88");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=453.77,578.15");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=553.33,831.97");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=457.25,734.92");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=548.22,693.86");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=359.25,741.99");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=249.36,805.50");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=344.93,668.05");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=308.82,816.64");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=267.68,659.22");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=364.12,704.30");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=330.04,642.69");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=284.43,685.76");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=249.03,651.98");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=346.54,599.47");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=357.24,730.77");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=494.71,674.61");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=409.00,745.37");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=462.99,540.53");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=576.20,837.80");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=403.76,710.44");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=499.38,764.74");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=375.58,785.46");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=319.95,706.58");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=281.88,659.67");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=227.64,708.40");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=239.20,748.50");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=425.71,654.85");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=454.61,679.88");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=310.38,603.88");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=338.18,658.33");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=270.98,610.41");
    }

}

