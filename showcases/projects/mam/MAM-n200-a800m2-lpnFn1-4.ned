
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn1-4
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
        @display("p=456.00,468.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=444.69,445.21");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=459.41,347.61");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=410.76,377.34");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=416.32,321.49");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=397.01,336.86");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=432.71,367.20");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=422.32,362.96");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=358.38,421.20");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=383.57,406.96");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=382.53,488.54");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=362.51,433.51");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=413.22,454.52");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=325.60,471.59");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=327.61,524.26");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=252.28,493.18");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=203.54,475.74");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=217.23,572.08");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=257.85,621.31");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=279.18,625.30");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=287.87,708.81");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=339.37,634.15");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=300.79,713.05");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=302.24,730.22");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=262.59,784.98");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=257.15,766.55");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=309.03,687.33");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=332.34,666.57");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=280.00,585.99");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=255.33,650.46");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=278.01,675.05");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=216.25,616.46");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=244.99,643.83");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=230.91,662.34");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=197.12,570.58");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=136.56,562.16");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=115.04,628.76");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=134.61,655.69");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=72.80,702.48");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=15.57,683.04");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=51.26,766.76");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=113.96,717.49");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=130.79,728.85");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=75.95,766.57");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=43.87,774.10");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=53.01,694.57");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=68.04,665.41");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=11.72,699.18");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=88.02,749.94");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=43.96,792.57");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=46.44,750.03");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=3.97,776.02");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=20.51,745.03");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=69.73,731.11");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=55.62,734.34");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=35.84,711.11");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=36.61,676.70");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=16.78,731.29");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=55.21,675.91");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=129.99,630.25");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=97.97,620.33");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=89.90,557.37");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=81.30,565.44");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=34.29,595.97");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=3.23,630.48");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=50.79,714.46");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=76.01,636.97");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=32.19,735.03");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=108.00,707.79");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=65.93,771.22");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=122.89,738.88");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=124.86,754.64");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=193.38,689.80");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=228.44,599.30");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=265.64,521.62");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=230.58,510.60");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=245.89,532.60");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=249.02,517.95");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=282.48,610.49");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=362.59,552.00");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=352.07,618.80");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=421.23,599.20");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=484.57,554.95");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=498.54,533.31");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=520.35,504.33");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=505.74,495.19");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=515.59,529.54");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=440.46,606.85");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=414.17,635.28");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=451.38,640.45");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=402.62,725.50");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=394.66,711.06");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=490.31,723.29");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=530.53,773.60");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=527.34,733.96");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=551.41,771.90");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=461.51,755.26");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=470.20,706.85");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=401.25,669.13");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=360.77,587.52");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=338.71,622.76");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=336.76,592.74");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=367.00,669.79");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=393.74,636.68");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=350.42,637.24");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=345.00,599.93");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=353.10,562.66");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=355.31,607.30");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=356.16,693.44");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=320.68,751.50");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=345.17,758.66");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=334.62,772.65");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=389.31,736.37");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=310.92,721.77");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=291.17,718.40");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=305.09,775.92");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=320.14,708.36");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=268.74,640.48");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=238.72,653.30");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=259.40,692.98");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=278.61,656.84");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=244.07,728.75");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=243.48,601.55");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=165.54,653.22");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=155.05,660.97");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=172.46,674.03");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=170.04,633.95");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=250.28,755.65");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=333.38,748.74");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=364.49,680.32");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=281.27,797.55");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=374.62,732.63");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=390.83,723.30");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=401.06,762.91");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=391.99,775.51");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=412.68,776.28");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=497.18,765.30");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=569.99,755.15");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=579.51,693.49");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=590.37,598.10");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=648.07,609.59");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=675.67,679.96");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=651.46,732.82");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=617.66,778.05");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=602.84,788.53");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=652.65,767.56");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=667.42,797.79");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=677.78,786.64");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=768.56,747.63");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=764.77,736.41");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=744.51,774.13");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=731.95,725.89");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=720.71,724.39");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=793.45,777.46");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=781.15,755.64");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=773.61,765.84");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=701.25,778.75");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=687.66,719.77");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=687.89,709.02");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=675.40,657.23");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=653.45,597.57");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=629.90,663.29");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=573.73,624.45");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=626.13,643.23");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=584.47,649.15");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=498.84,624.73");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=502.85,641.58");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=456.31,705.38");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=515.73,781.71");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=443.85,722.28");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=414.29,734.33");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=421.26,685.13");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=360.90,733.14");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=308.60,615.99");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=348.73,551.88");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=302.98,604.90");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=305.30,553.76");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=268.94,597.11");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=257.45,512.17");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=265.23,538.90");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=167.83,510.50");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=168.60,487.51");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=170.90,418.52");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=146.09,331.85");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=73.45,286.22");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=105.87,241.04");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=80.92,177.76");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=75.06,197.02");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=26.50,263.62");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=108.40,317.47");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=38.04,260.61");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=58.94,271.12");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=77.05,262.70");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=39.16,271.49");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=50.22,306.45");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=104.76,307.25");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=83.47,373.97");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=121.84,431.49");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=60.58,443.30");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=81.63,427.24");
    }

}

