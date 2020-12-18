
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn4-2
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
        @display("p=195.00,628.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=254.93,692.64");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=298.06,734.79");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=297.31,648.20");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=323.82,694.10");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=239.94,713.05");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=302.67,743.84");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=376.86,752.03");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=426.23,721.05");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=452.65,676.91");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=360.91,648.19");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=360.25,625.91");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=292.73,637.16");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=309.01,634.57");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=363.09,689.92");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=399.38,712.57");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=411.70,708.71");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=353.00,754.83");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=356.79,808.55");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=334.68,675.98");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=331.86,589.24");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=346.50,659.57");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=373.41,658.75");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=393.74,645.63");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=425.77,629.48");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=437.18,583.24");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=431.16,512.36");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=381.40,529.06");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=341.97,551.53");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=335.14,519.03");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=409.13,502.10");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=456.92,574.04");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=369.66,556.87");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=383.30,613.32");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=379.50,627.90");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=363.26,577.03");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=320.43,572.80");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=374.66,647.65");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=417.91,612.55");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=361.60,564.42");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=512.38,614.05");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=483.53,555.94");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=498.28,633.57");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=543.21,635.01");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=568.61,588.68");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=593.59,528.37");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=563.36,521.33");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=496.81,497.60");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=542.74,470.45");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=528.67,434.18");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=250.29,577.69");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=280.40,779.02");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=282.00,734.09");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=246.57,626.93");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=349.45,673.71");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=190.63,681.71");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=217.17,740.86");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=413.86,669.88");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=466.69,633.12");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=429.09,701.48");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=299.91,721.16");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=342.71,620.11");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=299.63,601.14");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=243.10,603.28");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=372.36,729.11");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=475.98,694.12");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=395.65,690.88");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=333.55,744.35");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=367.94,899.56");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=335.65,663.88");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=296.82,680.62");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=289.88,597.50");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=329.77,716.95");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=380.49,679.69");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=357.10,606.22");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=439.10,600.30");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=481.97,468.30");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=401.73,586.15");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=388.04,495.28");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=347.60,531.47");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=376.09,509.47");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=488.49,587.61");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=309.60,539.12");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=395.07,560.79");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=392.76,617.21");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=407.89,551.76");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=261.24,592.37");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=338.24,652.53");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=406.34,616.95");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=419.16,580.99");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=515.81,592.71");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=456.36,594.76");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=444.55,635.84");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=477.17,629.36");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=654.90,554.96");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=619.32,603.48");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=583.56,501.83");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=501.47,445.15");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=528.96,476.85");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=502.89,519.27");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=182.19,647.55");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=233.53,702.42");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=282.46,721.98");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=297.15,572.60");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=304.28,623.81");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=323.37,709.23");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=360.41,823.33");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=375.67,809.10");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=398.18,751.88");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=431.82,666.36");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=279.75,663.82");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=278.19,630.33");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=248.95,588.96");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=223.83,674.72");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=353.94,683.85");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=361.88,762.51");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=321.96,669.37");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=389.48,833.53");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=302.53,848.70");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=338.98,775.55");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=263.83,538.68");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=323.02,658.34");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=323.47,602.51");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=405.59,648.87");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=456.93,642.14");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=439.03,571.98");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=444.25,508.00");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=291.45,527.97");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=342.97,570.94");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=369.14,472.91");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=406.78,484.76");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=409.47,564.47");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=380.75,554.20");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=313.14,600.83");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=449.32,698.85");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=292.33,609.95");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=298.07,556.63");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=319.91,616.75");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=410.30,537.83");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=422.11,527.94");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=564.39,576.73");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=401.50,606.21");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=584.70,663.73");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=533.92,615.70");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=604.28,649.57");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=578.75,490.30");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=552.81,497.72");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=463.02,487.08");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=489.27,452.92");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=616.28,414.30");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=209.58,613.08");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=314.41,771.73");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=307.43,731.17");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=315.67,588.78");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=345.48,704.57");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=255.39,792.58");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=334.95,696.30");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=412.30,734.63");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=419.06,639.43");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=378.61,700.22");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=347.60,642.29");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=368.17,618.67");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=215.12,663.95");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=273.62,577.72");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=353.77,712.92");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=480.01,683.57");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=412.73,684.01");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=310.99,805.67");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=282.26,791.28");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=277.73,753.16");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=324.15,646.67");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=339.03,601.17");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=393.09,666.15");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=410.67,720.97");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=441.47,614.71");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=450.84,518.53");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=442.61,441.56");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=410.82,513.84");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=386.01,603.29");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=342.53,491.96");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=419.11,488.46");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=426.57,595.61");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=369.25,591.15");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=287.89,583.98");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=320.48,629.92");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=328.42,563.26");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=232.30,536.48");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=287.13,625.66");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=395.83,628.84");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=361.34,499.02");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=470.08,606.27");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=461.99,652.66");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=475.08,583.75");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=508.68,684.08");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=601.11,597.14");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=561.21,507.22");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=525.91,510.70");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=445.86,460.10");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=592.38,552.47");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=577.43,469.45");
    }

}

