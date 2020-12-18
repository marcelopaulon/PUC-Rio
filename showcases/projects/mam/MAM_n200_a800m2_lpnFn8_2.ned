
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_2
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
        @display("p=107.32,719.91");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=85.15,698.77");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=63.96,667.53");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=74.33,656.47");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=98.98,668.05");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=135.71,680.09");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=193.94,735.77");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=232.63,708.81");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=216.64,700.48");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=282.88,740.32");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=268.11,752.93");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=293.83,759.19");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=310.86,757.21");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=303.94,735.79");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=293.48,724.75");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=247.65,707.11");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=210.68,712.94");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=160.07,695.05");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=90.29,677.39");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=61.34,748.46");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=8.68,692.79");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=22.77,678.66");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=44.00,622.57");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=74.92,536.47");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=95.12,718.95");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=91.06,654.58");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=69.79,640.06");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=147.19,666.01");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=150.47,636.30");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=146.01,615.56");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=153.86,683.73");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=195.27,716.16");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=282.77,727.51");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=226.30,787.74");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=286.63,794.43");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=198.76,749.57");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=356.27,762.59");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=330.53,733.52");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=295.32,692.64");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=324.91,697.79");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=233.89,765.06");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=191.55,694.09");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=159.71,772.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=69.66,687.49");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=53.32,727.81");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=2.55,683.31");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=69.44,755.27");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=97.60,630.39");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=49.70,458.61");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=124.10,747.31");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=165.05,650.48");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=98.12,754.99");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=57.70,683.91");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=142.18,584.26");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=127.39,699.38");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=134.81,647.83");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=129.69,718.72");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=227.69,737.04");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=252.34,773.25");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=220.01,763.14");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=257.61,753.02");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=333.33,780.99");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=278.06,776.91");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=231.89,695.63");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=338.61,656.48");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=198.12,769.50");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=134.89,742.20");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=134.97,761.13");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=79.48,669.93");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=43.69,773.39");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=54.89,738.54");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=40.36,682.83");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=15.16,558.84");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=43.75,545.60");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=150.86,753.12");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=171.01,721.72");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=39.96,665.02");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=37.27,761.60");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=18.43,733.48");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=21.27,709.25");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=54.87,655.43");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=186.61,794.87");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=205.45,698.34");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=239.16,778.88");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=295.90,744.67");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=311.62,774.24");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=272.66,681.83");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=261.63,794.69");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=346.79,756.10");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=318.63,656.50");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=243.89,729.23");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=153.71,713.26");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=217.60,745.82");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=26.41,612.09");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=47.29,755.77");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=68.03,722.74");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=17.61,658.62");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=34.68,651.90");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=88.34,526.36");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=111.45,693.01");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=108.08,647.36");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=64.11,707.26");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=144.42,725.70");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=43.55,635.49");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=88.30,735.20");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=193.46,626.60");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=164.96,749.66");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=208.15,652.23");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=203.28,638.16");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=319.41,718.94");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=260.26,683.31");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=264.58,763.98");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=371.68,764.64");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=286.78,699.28");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=312.79,683.20");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=282.55,710.90");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=249.86,629.24");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=128.51,687.75");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=113.38,733.18");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=5.75,781.63");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=34.56,750.13");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=43.48,695.70");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=70.88,629.32");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=64.84,514.62");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=120.62,658.59");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=98.36,684.31");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=83.16,710.24");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=28.21,581.43");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=117.37,668.18");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=74.75,614.17");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=123.31,642.43");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=207.30,724.37");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=229.59,641.21");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=203.18,681.30");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=261.01,730.55");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=189.28,755.40");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=283.97,755.05");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=313.33,784.57");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=339.61,667.43");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=332.03,690.24");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=264.91,743.24");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=232.81,723.80");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=122.99,627.17");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=36.06,717.33");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=127.44,733.28");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=13.26,674.41");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=20.81,690.76");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=23.12,632.24");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=13.87,543.23");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=60.09,628.64");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=28.24,730.51");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=77.03,794.09");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=160.97,659.85");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=63.84,589.08");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=45.60,646.26");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=127.28,612.09");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=242.91,693.12");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=222.44,672.66");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=295.61,714.15");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=287.03,782.00");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=289.87,771.57");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=348.48,794.77");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=328.63,751.00");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=363.46,772.76");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=302.47,671.47");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=225.53,613.01");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=306.43,703.46");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=182.16,720.04");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=171.91,673.36");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=104.79,772.49");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=10.21,635.30");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=49.68,607.66");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=5.91,579.31");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=129.18,558.93");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=151.47,765.92");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=51.03,702.47");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=35.80,702.20");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=15.00,617.04");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=110.33,620.23");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=145.69,703.08");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=212.78,687.73");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=202.33,786.30");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=174.27,732.32");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=293.75,663.87");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=203.99,760.28");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=178.05,765.14");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=361.95,715.19");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=376.14,689.44");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=380.89,783.74");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=325.43,671.55");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=190.45,679.97");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=210.68,620.38");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=176.64,690.35");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=92.74,600.42");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=54.71,768.77");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=34.98,779.47");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=6.41,664.76");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=25.22,593.47");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=97.94,542.37");
    }

}

