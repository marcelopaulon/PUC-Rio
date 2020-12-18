
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a1000m2_lpnFn4_9
{
    parameters:
        @display("bgb=2000,2000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=68.76,825.74");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=89.82,817.20");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=115.79,837.82");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=115.55,777.22");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=99.36,789.35");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=67.55,757.86");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=136.91,761.08");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=205.85,738.31");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=252.86,710.50");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=274.81,696.08");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=299.21,631.99");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=315.65,689.38");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=345.40,673.13");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=339.58,659.52");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=318.25,674.38");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=303.17,679.77");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=373.26,715.04");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=378.41,631.28");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=368.57,677.18");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=428.41,614.62");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=470.56,635.40");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=432.57,594.56");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=433.57,536.33");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=473.11,584.68");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=450.56,596.31");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=496.14,646.51");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=477.88,618.47");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=498.35,672.81");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=440.87,698.92");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=384.95,703.79");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=347.44,703.01");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=253.59,735.66");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=167.30,734.52");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=77.22,753.30");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=69.97,780.49");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=76.43,794.07");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=43.91,740.64");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=50.48,805.61");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=85.80,773.07");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=101.94,775.69");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=71.37,682.34");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=110.21,715.85");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=135.80,699.97");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=82.03,633.04");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=81.33,622.83");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=50.28,628.23");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=27.28,692.60");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=63.76,707.27");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=150.46,771.80");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=110.19,900.54");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=55.07,880.30");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=96.43,835.76");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=152.45,781.90");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=106.19,759.06");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=41.27,793.09");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=42.91,728.42");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=218.19,772.93");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=149.56,699.07");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=266.98,731.23");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=220.28,680.61");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=286.98,676.54");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=280.56,748.14");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=355.80,668.63");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=263.16,626.48");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=347.24,631.57");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=276.27,716.98");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=375.01,649.62");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=388.77,634.87");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=364.64,705.27");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=409.63,573.62");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=451.61,630.60");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=400.88,605.49");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=428.98,558.61");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=473.63,563.13");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=492.76,630.21");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=475.38,655.59");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=511.38,609.01");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=534.07,650.54");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=375.16,692.94");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=420.24,716.09");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=369.05,729.54");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=155.12,744.19");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=220.38,735.74");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=32.43,765.29");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=76.95,806.60");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=128.51,853.88");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=24.38,681.41");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=43.89,813.74");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=115.62,824.85");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=115.72,681.27");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=34.16,702.49");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=83.17,738.20");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=144.40,753.43");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=128.38,625.00");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=142.03,622.45");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=51.39,536.11");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=38.10,657.41");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=107.58,667.48");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=144.60,716.40");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=127.08,893.50");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=77.77,845.13");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=49.32,779.33");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=91.65,845.73");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=129.49,726.25");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=62.15,735.20");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=95.67,745.79");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=65.42,696.25");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=170.60,768.94");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=241.69,751.69");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=307.99,770.52");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=300.66,643.60");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=319.73,662.12");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=290.86,602.55");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=369.14,636.68");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=327.70,683.54");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=352.16,654.20");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=386.33,729.59");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=316.83,635.91");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=397.68,639.92");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=487.29,560.33");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=521.79,581.12");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=417.25,515.48");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=353.47,550.89");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=496.63,607.24");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=410.39,654.75");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=477.25,642.83");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=531.42,591.28");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=517.85,675.38");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=390.63,712.96");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=397.00,730.29");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=333.95,725.15");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=198.40,746.86");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=164.87,709.48");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=128.06,800.51");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=11.88,804.18");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=15.39,821.74");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=29.82,820.28");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=25.84,725.47");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=57.24,789.20");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=51.19,839.47");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=33.48,718.33");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=138.61,648.70");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=145.29,734.20");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=121.25,578.66");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=118.45,649.59");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=91.79,630.47");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=18.86,756.71");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=38.30,644.67");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=202.16,786.27");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=15.92,911.63");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=35.72,856.26");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=26.95,843.48");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=142.61,852.37");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=146.51,822.90");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=191.30,823.82");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=27.81,736.90");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=91.26,731.47");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=192.92,812.24");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=251.85,646.43");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=267.40,794.84");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=300.13,693.88");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=287.24,740.63");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=282.58,663.44");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=284.88,709.40");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=343.86,598.80");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=282.93,774.13");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=414.73,746.69");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=324.83,581.24");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=436.89,719.59");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=393.60,623.46");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=451.98,651.76");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=498.85,529.42");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=406.20,447.28");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=390.24,590.62");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=456.42,580.68");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=484.70,590.45");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=489.59,579.74");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=505.91,699.39");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=412.35,677.00");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=410.40,732.52");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=390.84,693.48");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=270.43,773.73");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=214.51,725.60");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=15.12,675.89");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=96.56,698.97");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=98.43,806.37");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=60.83,674.82");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=107.23,813.53");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=59.78,847.44");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=133.54,775.04");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=90.83,679.16");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=131.30,748.89");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=151.14,610.15");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=119.41,668.01");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=76.06,656.25");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=94.41,689.20");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=23.82,668.70");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=46.98,686.38");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=180.53,745.77");
    }

}

