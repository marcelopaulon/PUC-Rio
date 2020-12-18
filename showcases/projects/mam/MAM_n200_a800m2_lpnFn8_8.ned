
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n200_a800m2_lpnFn8_8
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=35.86,772.39");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=46.71,797.20");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=55.33,788.73");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=147.51,769.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=218.93,789.01");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=144.58,797.47");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=177.54,742.84");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=87.75,702.27");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=74.10,678.19");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=170.47,657.84");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=233.46,677.86");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=206.38,650.00");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=298.36,637.31");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=382.84,659.13");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=355.39,638.71");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=336.48,699.28");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=347.08,613.43");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=280.51,591.81");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=363.59,594.74");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=439.31,529.98");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=372.27,575.71");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=448.79,533.99");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=404.15,446.68");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=401.24,470.58");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=143.80,678.53");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=45.07,704.95");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=32.03,723.84");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=107.06,754.26");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=192.05,782.26");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=247.22,733.83");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=204.88,750.03");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=202.69,779.17");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=50.35,622.56");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=56.75,664.88");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=163.96,649.04");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=266.91,600.94");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=217.09,639.80");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=315.79,655.87");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=425.03,641.04");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=389.69,686.30");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=297.21,709.64");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=426.31,562.69");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=272.18,504.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=389.62,608.86");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=408.06,505.58");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=319.21,641.48");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=494.25,543.05");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=348.16,457.83");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=413.78,478.49");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=33.84,699.30");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=87.48,748.87");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=24.98,766.07");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=44.66,739.84");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=195.53,723.40");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=132.45,775.49");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=87.70,777.07");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=157.32,750.27");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=57.70,712.71");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=56.91,676.20");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=97.56,615.22");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=250.93,683.48");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=203.68,631.88");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=291.81,627.72");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=448.77,692.73");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=313.77,613.73");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=372.83,648.43");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=307.73,555.83");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=243.39,563.22");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=432.18,576.81");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=533.36,532.09");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=420.65,520.62");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=444.85,593.66");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=447.09,452.90");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=402.43,495.08");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=58.34,643.91");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=115.34,712.67");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=36.41,793.42");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=43.60,762.90");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=130.59,765.16");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=261.62,721.90");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=181.61,752.48");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=156.58,725.54");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=134.85,683.65");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=93.90,691.84");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=111.64,596.32");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=246.05,643.07");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=160.13,599.07");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=280.62,675.27");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=366.16,677.65");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=439.10,630.48");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=338.24,631.39");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=338.29,570.81");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=243.65,596.71");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=351.48,583.03");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=499.11,529.34");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=345.17,657.05");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=448.95,512.41");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=392.23,433.86");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=310.63,504.39");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=129.14,788.86");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=10.49,736.69");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=11.81,709.50");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=68.46,777.68");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=161.16,785.19");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=204.23,792.76");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=239.71,795.44");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=261.58,697.25");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=150.80,664.03");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=80.72,769.64");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=126.65,630.44");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=302.20,610.01");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=218.01,743.25");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=221.70,689.67");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=402.55,747.18");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=266.31,618.72");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=312.75,700.42");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=360.48,627.72");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=233.54,602.40");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=302.99,656.76");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=404.24,531.76");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=329.84,533.62");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=468.53,459.41");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=415.22,446.34");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=360.58,475.95");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=17.35,655.40");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=14.62,756.15");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=27.86,709.04");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=4.17,797.33");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=153.11,713.52");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=229.26,760.16");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=92.61,712.13");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=160.96,739.75");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=46.27,718.89");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=26.24,615.55");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=181.11,658.29");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=227.92,617.83");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=175.71,683.98");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=346.85,670.71");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=434.50,657.76");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=391.81,698.04");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=310.49,723.84");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=317.15,542.61");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=317.17,595.92");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=423.47,623.41");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=440.94,551.79");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=362.80,549.48");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=528.20,552.70");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=394.38,411.23");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=376.39,441.50");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=122.03,758.14");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=16.92,692.23");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=71.51,790.77");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=103.05,771.72");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=106.39,726.73");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=214.37,779.72");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=117.94,793.35");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=205.12,673.19");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=96.05,666.64");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=42.94,729.73");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=130.86,720.26");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=212.06,692.37");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=213.64,708.89");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=244.87,659.21");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=390.07,644.13");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=298.80,571.96");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=325.00,678.07");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=273.55,565.13");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=293.86,594.53");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=383.09,626.36");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=402.95,556.56");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=288.19,607.57");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=403.46,614.96");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=423.91,539.54");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=439.17,414.15");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=71.32,724.88");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=113.38,738.82");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=61.60,768.91");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=140.51,741.94");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=247.02,774.35");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=189.32,767.61");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=166.23,707.22");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=228.18,704.48");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=94.28,740.03");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=41.67,628.81");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=191.07,692.91");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=241.57,618.40");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=112.19,617.60");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=362.27,663.31");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=411.41,697.60");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=284.97,580.10");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=356.66,698.67");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=319.57,667.61");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=261.00,530.01");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=273.91,629.34");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=490.91,556.66");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=400.64,586.45");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=463.03,569.18");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=425.27,424.34");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=474.33,446.86");
    }

}

