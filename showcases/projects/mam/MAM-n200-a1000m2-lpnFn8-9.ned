
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn8-9
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
        @display("p=721.00,634.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=685.41,617.90");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=711.66,581.21");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=716.04,560.23");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=681.00,592.73");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=655.49,620.41");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=604.65,688.56");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=686.40,665.84");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=624.85,619.51");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=678.08,535.97");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=657.27,453.55");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=635.43,534.64");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=721.75,575.61");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=681.88,646.41");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=723.94,620.58");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=789.36,575.61");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=835.32,513.33");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=870.26,489.09");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=783.76,491.84");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=762.01,431.15");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=784.68,448.48");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=821.10,379.12");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=885.49,307.52");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=896.95,287.91");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=902.64,318.59");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=675.51,684.93");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=666.44,639.57");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=744.37,657.36");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=707.76,659.23");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=652.35,553.13");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=638.02,652.51");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=551.25,718.91");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=632.71,669.38");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=545.73,578.89");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=631.25,472.59");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=675.29,433.52");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=573.67,551.47");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=696.45,619.32");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=741.67,571.49");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=703.25,685.44");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=788.30,599.51");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=805.01,567.12");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=918.07,522.95");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=827.29,501.77");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=797.14,435.20");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=804.80,466.97");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=806.54,321.35");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=839.15,261.16");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=838.33,248.87");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=917.17,325.57");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=750.33,704.06");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=699.41,593.54");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=726.61,643.58");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=628.56,599.85");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=608.55,612.66");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=664.74,649.58");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=612.62,786.38");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=699.98,712.73");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=608.05,646.41");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=604.73,563.53");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=599.23,500.54");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=636.98,549.08");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=704.73,628.47");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=703.08,701.00");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=733.50,628.59");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=754.41,663.93");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=822.12,459.73");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=820.68,513.94");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=790.19,527.57");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=692.70,421.70");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=870.73,420.16");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=782.95,433.09");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=886.20,246.68");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=934.39,367.77");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=904.74,301.57");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=732.91,565.13");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=667.16,559.10");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=684.71,578.40");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=694.86,551.56");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=755.04,596.58");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=649.92,632.47");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=646.83,746.36");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=652.05,695.65");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=575.15,666.12");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=740.39,527.29");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=633.54,389.06");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=637.23,587.84");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=802.41,606.63");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=664.03,668.92");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=653.92,586.13");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=803.02,585.22");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=840.97,465.23");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=933.82,425.76");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=755.24,481.78");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=769.69,477.91");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=767.05,523.22");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=853.08,384.17");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=901.99,217.64");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=892.20,297.07");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=927.09,273.63");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=734.69,616.18");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=725.44,676.30");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=717.75,663.86");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=698.08,515.48");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=730.16,542.55");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=691.73,635.53");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=561.90,720.36");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=713.97,606.05");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=650.99,665.99");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=651.28,522.32");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=585.82,498.06");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=625.82,529.76");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=774.93,565.61");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=702.00,671.79");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=687.85,686.89");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=823.64,618.57");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=916.18,459.71");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=886.28,451.21");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=835.37,546.55");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=719.75,438.70");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=782.17,362.56");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=811.19,403.08");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=860.13,366.32");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=829.53,341.58");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=984.26,325.27");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=728.82,732.66");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=615.81,638.79");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=725.79,590.87");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=708.83,511.80");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=665.23,512.91");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=583.76,642.82");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=661.57,706.06");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=617.13,597.25");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=553.47,561.89");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=728.64,501.72");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=610.05,523.62");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=574.79,468.24");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=800.61,553.63");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=692.66,742.42");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=747.29,536.64");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=811.58,545.69");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=764.00,544.07");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=898.17,466.65");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=743.98,487.75");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=769.80,454.03");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=735.71,466.08");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=778.48,407.84");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=846.86,299.74");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=944.67,268.98");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=918.30,309.02");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=739.85,718.92");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=748.07,627.44");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=730.80,519.97");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=700.45,505.19");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=673.75,603.95");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=593.18,659.40");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=588.69,603.18");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=615.10,687.77");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=673.54,661.74");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=721.91,550.57");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=654.10,435.35");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=630.80,483.63");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=707.81,530.97");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=632.20,689.02");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=784.07,637.09");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=747.14,584.94");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=862.36,539.94");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=881.67,485.52");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=782.41,505.04");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=791.98,360.40");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=752.63,397.22");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=810.88,371.67");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=965.00,305.79");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=903.81,351.07");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=967.51,344.06");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=785.84,706.70");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=712.20,620.13");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=750.24,516.30");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=706.55,556.66");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=654.83,569.63");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=649.59,608.51");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=610.01,726.25");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=738.97,747.29");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=553.86,629.04");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=601.19,543.29");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=689.10,451.22");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=578.44,525.92");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=719.46,525.86");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=686.26,565.04");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=692.85,655.28");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=822.45,632.23");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=904.28,488.09");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=887.70,527.44");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=829.84,420.31");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=716.31,362.95");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=845.03,434.14");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=828.92,361.10");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=942.00,326.10");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=871.74,225.74");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=904.13,334.67");
    }

}

