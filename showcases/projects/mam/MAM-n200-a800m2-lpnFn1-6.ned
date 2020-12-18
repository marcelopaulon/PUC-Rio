
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn1-6
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
        @display("p=302.00,514.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=266.60,475.46");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=290.10,497.48");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=227.28,475.46");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=250.60,452.12");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=261.91,445.00");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=295.93,486.93");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=208.32,449.88");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=173.78,429.03");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=197.24,434.52");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=178.58,443.22");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=94.50,455.21");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=22.47,491.85");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=27.24,509.00");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=93.77,525.31");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=121.75,531.47");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=139.27,521.79");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=152.25,449.35");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=198.19,493.39");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=248.46,531.52");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=207.96,562.41");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=167.84,587.42");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=167.08,667.20");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=221.33,641.97");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=207.60,646.20");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=128.88,590.29");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=60.13,538.99");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=69.63,584.58");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=79.28,508.02");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=65.14,507.67");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=129.71,559.33");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=120.06,550.44");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=104.80,606.13");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=106.50,568.78");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=108.43,491.50");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=85.05,497.41");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=86.43,485.84");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=104.81,513.61");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=97.56,557.76");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=131.14,605.58");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=44.27,586.32");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=37.46,511.30");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=42.80,445.42");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=78.96,536.98");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=64.59,527.63");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=27.12,598.27");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=39.72,633.77");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=32.99,619.56");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=84.39,691.39");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=83.43,708.15");
    }

    host_fn_rly_51: <default("SensorNode")> like INetworkNode {
        @display("p=29.30,637.60");
    }

    host_fn_rly_52: <default("SensorNode")> like INetworkNode {
        @display("p=17.51,575.93");
    }

    host_fn_rly_53: <default("SensorNode")> like INetworkNode {
        @display("p=32.53,571.91");
    }

    host_fn_rly_54: <default("SensorNode")> like INetworkNode {
        @display("p=35.60,668.34");
    }

    host_fn_rly_55: <default("SensorNode")> like INetworkNode {
        @display("p=46.75,675.88");
    }

    host_fn_rly_56: <default("SensorNode")> like INetworkNode {
        @display("p=24.55,689.33");
    }

    host_fn_rly_57: <default("SensorNode")> like INetworkNode {
        @display("p=3.13,666.41");
    }

    host_fn_rly_58: <default("SensorNode")> like INetworkNode {
        @display("p=0.85,733.03");
    }

    host_fn_rly_59: <default("SensorNode")> like INetworkNode {
        @display("p=63.69,655.94");
    }

    host_fn_rly_60: <default("SensorNode")> like INetworkNode {
        @display("p=52.63,574.62");
    }

    host_fn_rly_61: <default("SensorNode")> like INetworkNode {
        @display("p=93.08,605.50");
    }

    host_fn_rly_62: <default("SensorNode")> like INetworkNode {
        @display("p=36.30,560.15");
    }

    host_fn_rly_63: <default("SensorNode")> like INetworkNode {
        @display("p=73.60,632.48");
    }

    host_fn_rly_64: <default("SensorNode")> like INetworkNode {
        @display("p=31.86,654.92");
    }

    host_fn_rly_65: <default("SensorNode")> like INetworkNode {
        @display("p=7.91,613.58");
    }

    host_fn_rly_66: <default("SensorNode")> like INetworkNode {
        @display("p=43.49,619.46");
    }

    host_fn_rly_67: <default("SensorNode")> like INetworkNode {
        @display("p=22.17,648.43");
    }

    host_fn_rly_68: <default("SensorNode")> like INetworkNode {
        @display("p=58.11,665.67");
    }

    host_fn_rly_69: <default("SensorNode")> like INetworkNode {
        @display("p=67.00,701.39");
    }

    host_fn_rly_70: <default("SensorNode")> like INetworkNode {
        @display("p=91.54,654.54");
    }

    host_fn_rly_71: <default("SensorNode")> like INetworkNode {
        @display("p=142.63,734.92");
    }

    host_fn_rly_72: <default("SensorNode")> like INetworkNode {
        @display("p=145.89,751.59");
    }

    host_fn_rly_73: <default("SensorNode")> like INetworkNode {
        @display("p=65.65,727.31");
    }

    host_fn_rly_74: <default("SensorNode")> like INetworkNode {
        @display("p=60.67,749.76");
    }

    host_fn_rly_75: <default("SensorNode")> like INetworkNode {
        @display("p=54.89,702.82");
    }

    host_fn_rly_76: <default("SensorNode")> like INetworkNode {
        @display("p=106.66,674.95");
    }

    host_fn_rly_77: <default("SensorNode")> like INetworkNode {
        @display("p=64.08,714.01");
    }

    host_fn_rly_78: <default("SensorNode")> like INetworkNode {
        @display("p=11.02,771.84");
    }

    host_fn_rly_79: <default("SensorNode")> like INetworkNode {
        @display("p=9.12,759.13");
    }

    host_fn_rly_80: <default("SensorNode")> like INetworkNode {
        @display("p=40.24,796.59");
    }

    host_fn_rly_81: <default("SensorNode")> like INetworkNode {
        @display("p=36.77,700.45");
    }

    host_fn_rly_82: <default("SensorNode")> like INetworkNode {
        @display("p=91.37,680.79");
    }

    host_fn_rly_83: <default("SensorNode")> like INetworkNode {
        @display("p=123.32,720.55");
    }

    host_fn_rly_84: <default("SensorNode")> like INetworkNode {
        @display("p=33.66,730.16");
    }

    host_fn_rly_85: <default("SensorNode")> like INetworkNode {
        @display("p=44.02,721.50");
    }

    host_fn_rly_86: <default("SensorNode")> like INetworkNode {
        @display("p=27.43,753.13");
    }

    host_fn_rly_87: <default("SensorNode")> like INetworkNode {
        @display("p=23.78,705.65");
    }

    host_fn_rly_88: <default("SensorNode")> like INetworkNode {
        @display("p=60.75,677.31");
    }

    host_fn_rly_89: <default("SensorNode")> like INetworkNode {
        @display("p=170.13,722.34");
    }

    host_fn_rly_90: <default("SensorNode")> like INetworkNode {
        @display("p=182.07,717.14");
    }

    host_fn_rly_91: <default("SensorNode")> like INetworkNode {
        @display("p=114.89,756.40");
    }

    host_fn_rly_92: <default("SensorNode")> like INetworkNode {
        @display("p=122.91,706.18");
    }

    host_fn_rly_93: <default("SensorNode")> like INetworkNode {
        @display("p=136.82,757.65");
    }

    host_fn_rly_94: <default("SensorNode")> like INetworkNode {
        @display("p=185.96,740.58");
    }

    host_fn_rly_95: <default("SensorNode")> like INetworkNode {
        @display("p=223.03,725.13");
    }

    host_fn_rly_96: <default("SensorNode")> like INetworkNode {
        @display("p=292.14,766.61");
    }

    host_fn_rly_97: <default("SensorNode")> like INetworkNode {
        @display("p=250.07,772.38");
    }

    host_fn_rly_98: <default("SensorNode")> like INetworkNode {
        @display("p=342.04,788.86");
    }

    host_fn_rly_99: <default("SensorNode")> like INetworkNode {
        @display("p=247.86,793.10");
    }

    host_fn_rly_100: <default("SensorNode")> like INetworkNode {
        @display("p=296.48,794.09");
    }

    host_fn_rly_101: <default("SensorNode")> like INetworkNode {
        @display("p=351.20,796.84");
    }

    host_fn_rly_102: <default("SensorNode")> like INetworkNode {
        @display("p=350.98,777.80");
    }

    host_fn_rly_103: <default("SensorNode")> like INetworkNode {
        @display("p=364.87,787.09");
    }

    host_fn_rly_104: <default("SensorNode")> like INetworkNode {
        @display("p=372.35,794.66");
    }

    host_fn_rly_105: <default("SensorNode")> like INetworkNode {
        @display("p=341.84,724.27");
    }

    host_fn_rly_106: <default("SensorNode")> like INetworkNode {
        @display("p=317.58,758.13");
    }

    host_fn_rly_107: <default("SensorNode")> like INetworkNode {
        @display("p=329.24,755.08");
    }

    host_fn_rly_108: <default("SensorNode")> like INetworkNode {
        @display("p=407.48,779.60");
    }

    host_fn_rly_109: <default("SensorNode")> like INetworkNode {
        @display("p=442.88,781.62");
    }

    host_fn_rly_110: <default("SensorNode")> like INetworkNode {
        @display("p=418.76,715.27");
    }

    host_fn_rly_111: <default("SensorNode")> like INetworkNode {
        @display("p=381.91,717.48");
    }

    host_fn_rly_112: <default("SensorNode")> like INetworkNode {
        @display("p=377.71,706.63");
    }

    host_fn_rly_113: <default("SensorNode")> like INetworkNode {
        @display("p=359.68,610.09");
    }

    host_fn_rly_114: <default("SensorNode")> like INetworkNode {
        @display("p=330.68,689.53");
    }

    host_fn_rly_115: <default("SensorNode")> like INetworkNode {
        @display("p=317.31,694.17");
    }

    host_fn_rly_116: <default("SensorNode")> like INetworkNode {
        @display("p=400.78,679.92");
    }

    host_fn_rly_117: <default("SensorNode")> like INetworkNode {
        @display("p=400.72,669.12");
    }

    host_fn_rly_118: <default("SensorNode")> like INetworkNode {
        @display("p=346.75,677.41");
    }

    host_fn_rly_119: <default("SensorNode")> like INetworkNode {
        @display("p=304.27,619.23");
    }

    host_fn_rly_120: <default("SensorNode")> like INetworkNode {
        @display("p=249.47,578.55");
    }

    host_fn_rly_121: <default("SensorNode")> like INetworkNode {
        @display("p=260.14,589.73");
    }

    host_fn_rly_122: <default("SensorNode")> like INetworkNode {
        @display("p=223.98,571.34");
    }

    host_fn_rly_123: <default("SensorNode")> like INetworkNode {
        @display("p=287.27,589.92");
    }

    host_fn_rly_124: <default("SensorNode")> like INetworkNode {
        @display("p=241.45,590.72");
    }

    host_fn_rly_125: <default("SensorNode")> like INetworkNode {
        @display("p=163.95,609.66");
    }

    host_fn_rly_126: <default("SensorNode")> like INetworkNode {
        @display("p=76.92,574.71");
    }

    host_fn_rly_127: <default("SensorNode")> like INetworkNode {
        @display("p=94.31,593.74");
    }

    host_fn_rly_128: <default("SensorNode")> like INetworkNode {
        @display("p=98.76,501.88");
    }

    host_fn_rly_129: <default("SensorNode")> like INetworkNode {
        @display("p=165.14,456.22");
    }

    host_fn_rly_130: <default("SensorNode")> like INetworkNode {
        @display("p=208.14,361.40");
    }

    host_fn_rly_131: <default("SensorNode")> like INetworkNode {
        @display("p=233.02,393.58");
    }

    host_fn_rly_132: <default("SensorNode")> like INetworkNode {
        @display("p=199.78,300.08");
    }

    host_fn_rly_133: <default("SensorNode")> like INetworkNode {
        @display("p=257.86,298.72");
    }

    host_fn_rly_134: <default("SensorNode")> like INetworkNode {
        @display("p=229.15,267.14");
    }

    host_fn_rly_135: <default("SensorNode")> like INetworkNode {
        @display("p=181.96,261.23");
    }

    host_fn_rly_136: <default("SensorNode")> like INetworkNode {
        @display("p=225.67,218.80");
    }

    host_fn_rly_137: <default("SensorNode")> like INetworkNode {
        @display("p=284.60,164.15");
    }

    host_fn_rly_138: <default("SensorNode")> like INetworkNode {
        @display("p=260.65,141.22");
    }

    host_fn_rly_139: <default("SensorNode")> like INetworkNode {
        @display("p=305.19,135.19");
    }

    host_fn_rly_140: <default("SensorNode")> like INetworkNode {
        @display("p=398.37,151.49");
    }

    host_fn_rly_141: <default("SensorNode")> like INetworkNode {
        @display("p=346.95,105.89");
    }

    host_fn_rly_142: <default("SensorNode")> like INetworkNode {
        @display("p=272.48,70.37");
    }

    host_fn_rly_143: <default("SensorNode")> like INetworkNode {
        @display("p=288.20,67.34");
    }

    host_fn_rly_144: <default("SensorNode")> like INetworkNode {
        @display("p=303.44,50.22");
    }

    host_fn_rly_145: <default("SensorNode")> like INetworkNode {
        @display("p=328.88,41.08");
    }

    host_fn_rly_146: <default("SensorNode")> like INetworkNode {
        @display("p=411.00,47.12");
    }

    host_fn_rly_147: <default("SensorNode")> like INetworkNode {
        @display("p=354.19,76.13");
    }

    host_fn_rly_148: <default("SensorNode")> like INetworkNode {
        @display("p=367.02,87.41");
    }

    host_fn_rly_149: <default("SensorNode")> like INetworkNode {
        @display("p=401.40,124.05");
    }

    host_fn_rly_150: <default("SensorNode")> like INetworkNode {
        @display("p=343.27,151.38");
    }

    host_fn_rly_151: <default("SensorNode")> like INetworkNode {
        @display("p=387.71,167.03");
    }

    host_fn_rly_152: <default("SensorNode")> like INetworkNode {
        @display("p=471.37,151.44");
    }

    host_fn_rly_153: <default("SensorNode")> like INetworkNode {
        @display("p=482.60,155.61");
    }

    host_fn_rly_154: <default("SensorNode")> like INetworkNode {
        @display("p=436.31,92.43");
    }

    host_fn_rly_155: <default("SensorNode")> like INetworkNode {
        @display("p=368.90,114.44");
    }

    host_fn_rly_156: <default("SensorNode")> like INetworkNode {
        @display("p=325.31,62.09");
    }

    host_fn_rly_157: <default("SensorNode")> like INetworkNode {
        @display("p=329.61,21.37");
    }

    host_fn_rly_158: <default("SensorNode")> like INetworkNode {
        @display("p=340.63,72.24");
    }

    host_fn_rly_159: <default("SensorNode")> like INetworkNode {
        @display("p=392.67,69.93");
    }

    host_fn_rly_160: <default("SensorNode")> like INetworkNode {
        @display("p=366.47,101.21");
    }

    host_fn_rly_161: <default("SensorNode")> like INetworkNode {
        @display("p=392.95,114.40");
    }

    host_fn_rly_162: <default("SensorNode")> like INetworkNode {
        @display("p=340.48,91.08");
    }

    host_fn_rly_163: <default("SensorNode")> like INetworkNode {
        @display("p=262.35,127.71");
    }

    host_fn_rly_164: <default("SensorNode")> like INetworkNode {
        @display("p=278.54,112.08");
    }

    host_fn_rly_165: <default("SensorNode")> like INetworkNode {
        @display("p=284.77,140.90");
    }

    host_fn_rly_166: <default("SensorNode")> like INetworkNode {
        @display("p=239.71,205.40");
    }

    host_fn_rly_167: <default("SensorNode")> like INetworkNode {
        @display("p=260.12,238.32");
    }

    host_fn_rly_168: <default("SensorNode")> like INetworkNode {
        @display("p=209.46,274.92");
    }

    host_fn_rly_169: <default("SensorNode")> like INetworkNode {
        @display("p=224.68,296.23");
    }

    host_fn_rly_170: <default("SensorNode")> like INetworkNode {
        @display("p=192.23,385.46");
    }

    host_fn_rly_171: <default("SensorNode")> like INetworkNode {
        @display("p=154.77,401.45");
    }

    host_fn_rly_172: <default("SensorNode")> like INetworkNode {
        @display("p=184.81,366.87");
    }

    host_fn_rly_173: <default("SensorNode")> like INetworkNode {
        @display("p=235.95,428.37");
    }

    host_fn_rly_174: <default("SensorNode")> like INetworkNode {
        @display("p=150.82,503.97");
    }

    host_fn_rly_175: <default("SensorNode")> like INetworkNode {
        @display("p=141.16,508.01");
    }

    host_fn_rly_176: <default("SensorNode")> like INetworkNode {
        @display("p=195.15,602.18");
    }

    host_fn_rly_177: <default("SensorNode")> like INetworkNode {
        @display("p=195.00,591.93");
    }

    host_fn_rly_178: <default("SensorNode")> like INetworkNode {
        @display("p=166.14,638.46");
    }

    host_fn_rly_179: <default("SensorNode")> like INetworkNode {
        @display("p=138.52,696.56");
    }

    host_fn_rly_180: <default("SensorNode")> like INetworkNode {
        @display("p=99.33,663.81");
    }

    host_fn_rly_181: <default("SensorNode")> like INetworkNode {
        @display("p=117.19,633.10");
    }

    host_fn_rly_182: <default("SensorNode")> like INetworkNode {
        @display("p=156.49,592.22");
    }

    host_fn_rly_183: <default("SensorNode")> like INetworkNode {
        @display("p=130.20,679.65");
    }

    host_fn_rly_184: <default("SensorNode")> like INetworkNode {
        @display("p=91.28,621.52");
    }

    host_fn_rly_185: <default("SensorNode")> like INetworkNode {
        @display("p=135.38,652.68");
    }

    host_fn_rly_186: <default("SensorNode")> like INetworkNode {
        @display("p=154.01,765.29");
    }

    host_fn_rly_187: <default("SensorNode")> like INetworkNode {
        @display("p=130.19,772.31");
    }

    host_fn_rly_188: <default("SensorNode")> like INetworkNode {
        @display("p=108.66,786.84");
    }

    host_fn_rly_189: <default("SensorNode")> like INetworkNode {
        @display("p=99.27,766.74");
    }

    host_fn_rly_190: <default("SensorNode")> like INetworkNode {
        @display("p=147.20,796.30");
    }

    host_fn_rly_191: <default("SensorNode")> like INetworkNode {
        @display("p=77.57,655.28");
    }

    host_fn_rly_192: <default("SensorNode")> like INetworkNode {
        @display("p=145.44,584.21");
    }

    host_fn_rly_193: <default("SensorNode")> like INetworkNode {
        @display("p=138.03,570.69");
    }

    host_fn_rly_194: <default("SensorNode")> like INetworkNode {
        @display("p=117.07,574.19");
    }

    host_fn_rly_195: <default("SensorNode")> like INetworkNode {
        @display("p=132.82,536.45");
    }

    host_fn_rly_196: <default("SensorNode")> like INetworkNode {
        @display("p=140.80,637.57");
    }

    host_fn_rly_197: <default("SensorNode")> like INetworkNode {
        @display("p=226.53,707.05");
    }

    host_fn_rly_198: <default("SensorNode")> like INetworkNode {
        @display("p=235.21,626.86");
    }

    host_fn_rly_199: <default("SensorNode")> like INetworkNode {
        @display("p=238.25,675.62");
    }

    host_fn_rly_200: <default("SensorNode")> like INetworkNode {
        @display("p=265.37,738.81");
    }

}

