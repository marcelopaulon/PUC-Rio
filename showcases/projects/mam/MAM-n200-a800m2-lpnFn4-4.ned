
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a800m2-lpnFn4-4
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
        @display("p=151.00,494.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=152.76,474.92");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=181.56,457.43");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=258.71,414.09");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=283.20,399.11");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=304.42,370.58");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=354.51,378.09");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=368.73,381.77");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=419.50,430.24");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=470.93,461.04");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=475.19,438.50");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=483.34,446.55");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=489.08,350.82");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=572.56,368.47");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=481.34,385.81");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=577.79,411.81");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=562.87,315.38");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=517.45,403.32");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=469.86,320.95");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=497.73,327.67");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=433.90,272.25");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=525.14,234.08");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=561.02,230.63");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=569.04,180.97");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=553.44,132.14");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=563.64,81.86");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=607.77,43.10");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=548.41,82.04");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=496.51,20.72");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=522.74,47.08");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=544.15,25.63");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=546.53,40.62");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=514.25,13.62");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=524.34,0.16");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=570.16,36.01");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=581.04,120.04");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=630.71,50.82");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=626.30,90.85");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=661.04,126.69");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=722.87,104.74");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=706.11,116.63");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=756.49,152.66");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=727.35,140.69");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=758.33,164.84");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=732.95,174.23");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=754.81,79.28");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=692.18,64.53");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=672.27,139.78");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=658.69,112.43");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=670.11,182.98");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=158.56,503.36");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=202.14,471.81");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=178.74,482.50");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=324.27,448.48");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=346.32,460.87");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=213.78,358.64");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=413.18,334.65");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=377.04,421.33");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=356.16,403.00");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=489.12,489.18");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=388.10,451.62");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=463.93,432.64");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=446.63,371.67");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=597.04,365.52");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=490.56,474.47");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=555.95,408.47");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=538.96,382.39");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=475.31,480.93");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=482.79,316.65");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=482.17,333.16");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=414.72,270.76");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=534.83,239.79");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=535.80,159.00");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=550.14,237.05");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=500.34,70.42");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=518.89,23.36");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=585.04,54.45");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=581.87,87.20");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=483.07,13.68");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=498.76,3.36");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=555.59,102.12");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=542.56,55.78");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=546.74,3.74");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=558.87,66.82");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=627.75,36.04");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=523.52,92.66");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=722.40,16.72");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=683.39,144.36");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=674.12,62.55");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=774.53,99.95");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=659.22,44.15");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=795.03,144.61");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=687.97,101.81");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=756.66,174.87");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=738.96,86.46");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=766.84,60.91");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=643.57,67.23");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=728.35,114.05");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=702.02,101.97");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=670.36,166.89");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=160.05,465.94");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=98.81,477.24");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=180.97,548.25");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=268.00,417.79");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=319.92,408.22");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=307.77,343.58");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=312.46,465.40");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=350.41,348.06");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=381.94,398.31");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=506.33,416.98");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=426.77,402.10");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=495.72,436.77");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=475.27,259.41");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=658.09,366.57");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=526.65,469.67");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=552.87,392.14");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=640.68,341.08");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=501.53,406.76");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=454.51,307.46");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=525.74,416.63");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=455.27,245.49");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=496.76,199.10");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=570.74,271.89");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=581.26,173.20");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=595.85,202.32");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=510.75,131.97");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=560.12,21.29");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=614.14,51.91");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=465.31,7.49");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=490.75,93.15");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=562.00,120.65");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=594.08,14.33");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=517.86,71.61");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=465.75,29.18");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=579.22,99.64");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=588.42,138.21");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=636.52,78.00");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=585.51,107.51");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=635.35,149.44");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=702.76,81.68");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=770.80,77.20");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=787.21,173.91");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=742.79,67.18");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=750.16,136.98");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=741.38,185.30");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=715.35,170.33");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=623.07,123.44");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=767.90,128.36");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=645.24,122.80");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=651.81,213.75");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=190.72,417.29");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=246.50,451.45");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=153.00,436.96");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=236.17,410.88");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=235.21,389.05");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=320.73,377.27");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=306.83,430.19");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=387.04,387.52");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=371.40,450.61");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=427.71,519.52");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=440.96,349.72");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=415.30,418.85");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=415.51,402.50");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=614.08,295.65");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=526.49,388.34");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=528.08,453.33");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=647.91,331.22");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=553.18,332.55");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=491.81,277.17");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=575.43,304.92");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=395.50,237.25");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=474.60,193.56");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=586.43,186.66");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=607.22,258.11");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=491.25,110.21");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=503.64,59.53");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=582.49,18.21");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=611.86,80.09");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=544.86,106.76");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=448.57,46.84");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=546.86,68.19");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=600.55,86.22");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=500.86,80.49");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=530.54,12.32");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=564.38,49.26");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=540.63,148.22");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=637.06,114.67");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=621.95,73.07");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=694.88,91.68");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=742.93,108.76");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=766.31,139.92");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=774.63,226.38");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=683.43,179.28");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=719.03,128.46");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=717.75,203.28");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=689.18,113.28");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=752.82,60.28");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=650.86,161.37");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=716.77,87.07");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=656.48,172.73");
    }

}

