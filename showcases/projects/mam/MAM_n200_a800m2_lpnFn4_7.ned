
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn4_7
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
        @display("p=144.82,787.87");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=176.83,749.64");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=180.45,772.35");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=168.86,771.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=131.40,791.94");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=64.55,792.06");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=97.50,791.90");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=41.48,770.37");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=52.10,783.29");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=115.09,733.24");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=55.48,752.30");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=25.80,760.87");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=8.82,763.16");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=98.85,756.83");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=77.24,760.87");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=26.40,781.30");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=13.85,772.39");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=8.68,792.75");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=25.72,797.21");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=64.23,740.01");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=65.59,776.38");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=53.86,697.81");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=48.37,661.51");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=121.91,724.88");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=137.14,640.19");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=188.43,665.13");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=184.71,676.07");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=247.43,642.37");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=182.12,707.57");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=270.89,735.86");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=347.10,684.37");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=381.63,617.30");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=380.69,636.71");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=369.72,635.77");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=402.01,640.38");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=474.30,581.28");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=448.25,559.49");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=362.08,607.59");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=386.20,664.04");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=411.62,660.97");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=471.67,661.98");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=476.16,697.02");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=420.95,748.10");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=432.38,739.85");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=412.93,781.92");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=374.68,777.54");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=280.33,774.96");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=289.14,761.92");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=263.85,797.86");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=59.66,686.22");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=204.89,775.51");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=195.12,754.66");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=187.09,743.50");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=164.52,754.07");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=154.79,769.62");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=124.39,713.47");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=124.15,784.22");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=78.37,678.51");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=48.20,761.77");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=108.06,716.15");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=126.31,734.28");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=32.63,728.51");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=7.34,735.69");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=92.97,709.78");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=59.31,762.59");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=65.00,698.00");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=108.94,751.71");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=36.25,759.06");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=116.95,768.50");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=117.96,746.37");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=41.15,689.07");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=36.41,644.22");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=36.77,596.67");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=148.93,735.68");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=140.96,617.50");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=255.89,679.34");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=164.89,668.54");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=169.61,593.13");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=140.40,705.41");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=340.98,757.98");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=256.53,652.70");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=443.91,602.67");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=450.86,569.85");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=345.75,649.72");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=333.57,649.58");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=525.25,535.70");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=484.58,634.68");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=306.29,640.12");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=396.62,649.19");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=385.68,646.46");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=515.88,707.63");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=438.18,772.97");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=422.18,711.23");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=441.53,721.16");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=418.87,726.50");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=343.73,728.87");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=307.05,762.98");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=305.51,712.80");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=284.27,790.10");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=67.43,722.35");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=157.78,780.80");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=174.25,760.31");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=166.37,697.98");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=178.45,691.03");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=173.00,793.98");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=39.04,716.85");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=78.08,784.86");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=105.28,778.80");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=15.61,750.54");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=119.10,795.37");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=79.40,667.88");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=79.60,748.52");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=65.73,751.23");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=91.22,772.64");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=33.54,744.98");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=5.77,722.24");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=12.28,782.73");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=55.47,732.57");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=34.98,788.49");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=79.22,711.63");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=88.35,693.91");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=24.22,681.27");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=9.31,679.71");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=195.82,672.49");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=91.10,682.26");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=173.62,650.86");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=255.88,708.97");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=219.59,634.67");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=136.35,654.83");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=217.86,752.43");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=400.41,731.60");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=338.20,578.18");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=342.72,660.05");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=398.46,666.18");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=375.68,664.77");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=482.79,574.22");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=375.82,536.64");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=327.66,515.12");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=322.45,617.64");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=426.19,687.01");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=446.19,622.99");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=502.23,682.69");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=504.74,762.03");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=429.28,666.25");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=426.13,793.63");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=346.15,781.75");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=363.48,723.81");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=315.36,752.86");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=220.14,790.59");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=12.00,710.07");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=156.36,794.69");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=257.13,754.92");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=216.07,737.61");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=136.74,720.09");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=134.51,757.41");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=114.02,706.13");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=109.69,798.79");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=92.37,721.61");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=46.56,799.33");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=67.39,660.02");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=52.03,708.24");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=76.06,796.53");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=63.16,710.87");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=149.97,673.32");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=73.18,734.47");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=42.15,780.35");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=97.34,741.67");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=87.81,761.67");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=30.90,770.55");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=62.95,649.50");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=23.59,712.51");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=123.43,759.67");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=63.99,619.75");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=106.25,648.34");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=203.91,636.85");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=213.52,715.46");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=220.91,762.38");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=262.79,624.14");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=270.68,707.98");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=259.70,785.44");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=352.74,626.69");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=358.97,677.76");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=401.73,603.88");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=358.93,712.13");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=449.54,665.21");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=510.72,561.36");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=530.08,544.84");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=386.50,601.48");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=481.02,677.90");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=322.59,652.11");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=475.99,609.73");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=542.67,699.12");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=456.43,745.97");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=398.37,711.55");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=474.10,792.18");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=363.00,786.70");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=294.05,772.90");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=274.51,760.71");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=215.51,774.27");
    }

}

