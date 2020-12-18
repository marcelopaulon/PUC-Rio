
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n200-a1000m2-lpnFn12-8
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
        @display("p=579.00,426.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=544.84,440.51");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=546.00,461.78");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=630.92,506.53");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=644.39,510.52");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=594.63,416.62");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=623.99,392.30");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=576.70,383.53");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=610.45,303.09");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=652.72,251.72");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=612.56,287.95");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=524.20,250.18");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=437.22,223.25");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=428.05,207.70");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=468.18,183.66");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=483.72,170.30");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=526.99,213.34");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=651.21,386.05");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=503.28,445.01");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=566.41,461.77");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=696.32,484.04");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=592.84,490.55");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=609.69,335.17");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=640.89,402.99");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=563.87,406.96");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=572.45,286.56");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=651.93,202.19");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=609.90,217.19");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=558.99,207.62");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=391.69,221.45");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=355.28,260.80");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=422.63,105.80");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=509.94,226.72");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=545.92,146.25");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=586.04,451.00");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=559.40,512.43");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=515.86,502.55");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=676.24,435.24");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=650.08,490.57");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=623.30,414.98");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=636.85,382.00");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=489.01,428.09");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=663.10,341.69");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=619.17,313.31");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=638.16,366.01");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=550.66,243.89");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=351.76,187.15");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=468.60,223.44");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=378.10,220.41");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=465.74,157.51");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=598.87,179.68");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=630.05,359.44");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=537.79,471.15");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=518.56,475.72");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=630.92,592.89");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=640.42,486.70");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=611.99,417.50");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=667.97,406.25");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=567.72,394.46");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=554.09,276.55");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=556.86,225.19");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=523.75,264.43");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=543.54,205.17");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=450.84,263.00");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=393.93,136.34");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=526.89,166.13");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=442.38,205.79");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=540.76,222.13");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=537.39,373.50");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=536.92,426.68");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=537.06,487.72");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=634.18,531.16");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=602.52,493.82");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=652.08,361.68");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=612.56,454.04");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=604.22,432.25");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=527.31,307.06");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=586.23,312.46");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=635.97,334.26");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=534.25,273.47");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=421.29,220.06");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=338.31,236.40");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=441.28,179.60");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=434.65,140.40");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=587.67,141.41");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=622.49,449.32");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=603.91,378.13");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=568.08,418.56");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=636.01,459.84");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=643.69,526.80");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=568.73,440.09");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=556.63,419.51");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=510.82,378.94");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=581.72,280.93");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=566.34,220.31");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=664.64,205.03");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=520.66,290.36");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=359.07,163.22");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=413.79,253.38");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=412.09,186.74");
    }

    host_lpn_101: <default("SensorNode")> like INetworkNode {
        @display("p=442.50,92.94");
    }

    host_lpn_102: <default("SensorNode")> like INetworkNode {
        @display("p=508.93,195.82");
    }

    host_lpn_103: <default("SensorNode")> like INetworkNode {
        @display("p=656.52,444.69");
    }

    host_lpn_104: <default("SensorNode")> like INetworkNode {
        @display("p=478.85,474.59");
    }

    host_lpn_105: <default("SensorNode")> like INetworkNode {
        @display("p=584.98,526.69");
    }

    host_lpn_106: <default("SensorNode")> like INetworkNode {
        @display("p=654.96,572.33");
    }

    host_lpn_107: <default("SensorNode")> like INetworkNode {
        @display("p=708.29,586.24");
    }

    host_lpn_108: <default("SensorNode")> like INetworkNode {
        @display("p=591.46,335.65");
    }

    host_lpn_109: <default("SensorNode")> like INetworkNode {
        @display("p=594.49,389.04");
    }

    host_lpn_110: <default("SensorNode")> like INetworkNode {
        @display("p=554.76,474.07");
    }

    host_lpn_111: <default("SensorNode")> like INetworkNode {
        @display("p=600.88,280.77");
    }

    host_lpn_112: <default("SensorNode")> like INetworkNode {
        @display("p=565.41,297.24");
    }

    host_lpn_113: <default("SensorNode")> like INetworkNode {
        @display("p=586.91,248.62");
    }

    host_lpn_114: <default("SensorNode")> like INetworkNode {
        @display("p=562.31,338.98");
    }

    host_lpn_115: <default("SensorNode")> like INetworkNode {
        @display("p=357.39,277.42");
    }

    host_lpn_116: <default("SensorNode")> like INetworkNode {
        @display("p=415.35,145.69");
    }

    host_lpn_117: <default("SensorNode")> like INetworkNode {
        @display("p=457.21,175.05");
    }

    host_lpn_118: <default("SensorNode")> like INetworkNode {
        @display("p=531.85,177.57");
    }

    host_lpn_119: <default("SensorNode")> like INetworkNode {
        @display("p=479.03,290.40");
    }

    host_lpn_120: <default("SensorNode")> like INetworkNode {
        @display("p=572.44,493.93");
    }

    host_lpn_121: <default("SensorNode")> like INetworkNode {
        @display("p=542.50,413.36");
    }

    host_lpn_122: <default("SensorNode")> like INetworkNode {
        @display("p=491.05,487.11");
    }

    host_lpn_123: <default("SensorNode")> like INetworkNode {
        @display("p=614.43,593.32");
    }

    host_lpn_124: <default("SensorNode")> like INetworkNode {
        @display("p=662.64,517.85");
    }

    host_lpn_125: <default("SensorNode")> like INetworkNode {
        @display("p=577.85,512.00");
    }

    host_lpn_126: <default("SensorNode")> like INetworkNode {
        @display("p=577.23,343.87");
    }

    host_lpn_127: <default("SensorNode")> like INetworkNode {
        @display("p=623.94,436.70");
    }

    host_lpn_128: <default("SensorNode")> like INetworkNode {
        @display("p=596.79,320.40");
    }

    host_lpn_129: <default("SensorNode")> like INetworkNode {
        @display("p=653.74,239.43");
    }

    host_lpn_130: <default("SensorNode")> like INetworkNode {
        @display("p=616.02,251.87");
    }

    host_lpn_131: <default("SensorNode")> like INetworkNode {
        @display("p=560.19,327.34");
    }

    host_lpn_132: <default("SensorNode")> like INetworkNode {
        @display("p=452.82,196.99");
    }

    host_lpn_133: <default("SensorNode")> like INetworkNode {
        @display("p=456.48,245.66");
    }

    host_lpn_134: <default("SensorNode")> like INetworkNode {
        @display("p=442.45,243.70");
    }

    host_lpn_135: <default("SensorNode")> like INetworkNode {
        @display("p=482.28,206.64");
    }

    host_lpn_136: <default("SensorNode")> like INetworkNode {
        @display("p=507.51,297.87");
    }

    host_lpn_137: <default("SensorNode")> like INetworkNode {
        @display("p=593.09,479.14");
    }

    host_lpn_138: <default("SensorNode")> like INetworkNode {
        @display("p=525.71,444.04");
    }

    host_lpn_139: <default("SensorNode")> like INetworkNode {
        @display("p=546.71,481.98");
    }

    host_lpn_140: <default("SensorNode")> like INetworkNode {
        @display("p=698.15,434.32");
    }

    host_lpn_141: <default("SensorNode")> like INetworkNode {
        @display("p=610.92,555.26");
    }

    host_lpn_142: <default("SensorNode")> like INetworkNode {
        @display("p=671.89,381.10");
    }

    host_lpn_143: <default("SensorNode")> like INetworkNode {
        @display("p=612.26,488.76");
    }

    host_lpn_144: <default("SensorNode")> like INetworkNode {
        @display("p=624.78,370.74");
    }

    host_lpn_145: <default("SensorNode")> like INetworkNode {
        @display("p=536.34,360.20");
    }

    host_lpn_146: <default("SensorNode")> like INetworkNode {
        @display("p=706.28,253.18");
    }

    host_lpn_147: <default("SensorNode")> like INetworkNode {
        @display("p=640.30,207.32");
    }

    host_lpn_148: <default("SensorNode")> like INetworkNode {
        @display("p=514.55,178.38");
    }

    host_lpn_149: <default("SensorNode")> like INetworkNode {
        @display("p=381.39,280.87");
    }

    host_lpn_150: <default("SensorNode")> like INetworkNode {
        @display("p=342.52,201.29");
    }

    host_lpn_151: <default("SensorNode")> like INetworkNode {
        @display("p=464.59,263.84");
    }

    host_lpn_152: <default("SensorNode")> like INetworkNode {
        @display("p=575.13,153.60");
    }

    host_lpn_153: <default("SensorNode")> like INetworkNode {
        @display("p=520.50,203.51");
    }

    host_lpn_154: <default("SensorNode")> like INetworkNode {
        @display("p=616.79,478.74");
    }

    host_lpn_155: <default("SensorNode")> like INetworkNode {
        @display("p=504.13,431.07");
    }

    host_lpn_156: <default("SensorNode")> like INetworkNode {
        @display("p=480.57,449.35");
    }

    host_lpn_157: <default("SensorNode")> like INetworkNode {
        @display("p=604.69,521.74");
    }

    host_lpn_158: <default("SensorNode")> like INetworkNode {
        @display("p=639.06,435.52");
    }

    host_lpn_159: <default("SensorNode")> like INetworkNode {
        @display("p=629.11,426.49");
    }

    host_lpn_160: <default("SensorNode")> like INetworkNode {
        @display("p=575.08,472.55");
    }

    host_lpn_161: <default("SensorNode")> like INetworkNode {
        @display("p=499.51,356.39");
    }

    host_lpn_162: <default("SensorNode")> like INetworkNode {
        @display("p=621.66,327.77");
    }

    host_lpn_163: <default("SensorNode")> like INetworkNode {
        @display("p=650.62,329.93");
    }

    host_lpn_164: <default("SensorNode")> like INetworkNode {
        @display("p=663.81,365.22");
    }

    host_lpn_165: <default("SensorNode")> like INetworkNode {
        @display("p=543.86,192.05");
    }

    host_lpn_166: <default("SensorNode")> like INetworkNode {
        @display("p=382.82,210.41");
    }

    host_lpn_167: <default("SensorNode")> like INetworkNode {
        @display("p=412.60,163.01");
    }

    host_lpn_168: <default("SensorNode")> like INetworkNode {
        @display("p=500.89,182.54");
    }

    host_lpn_169: <default("SensorNode")> like INetworkNode {
        @display("p=532.21,143.05");
    }

    host_lpn_170: <default("SensorNode")> like INetworkNode {
        @display("p=526.49,194.32");
    }

    host_lpn_171: <default("SensorNode")> like INetworkNode {
        @display("p=646.06,474.28");
    }

    host_lpn_172: <default("SensorNode")> like INetworkNode {
        @display("p=530.89,409.11");
    }

    host_lpn_173: <default("SensorNode")> like INetworkNode {
        @display("p=502.65,456.55");
    }

    host_lpn_174: <default("SensorNode")> like INetworkNode {
        @display("p=665.79,501.92");
    }

    host_lpn_175: <default("SensorNode")> like INetworkNode {
        @display("p=629.76,551.34");
    }

    host_lpn_176: <default("SensorNode")> like INetworkNode {
        @display("p=542.70,392.68");
    }

    host_lpn_177: <default("SensorNode")> like INetworkNode {
        @display("p=656.87,406.89");
    }

    host_lpn_178: <default("SensorNode")> like INetworkNode {
        @display("p=578.52,322.34");
    }

    host_lpn_179: <default("SensorNode")> like INetworkNode {
        @display("p=639.69,282.58");
    }

    host_lpn_180: <default("SensorNode")> like INetworkNode {
        @display("p=696.69,320.72");
    }

    host_lpn_181: <default("SensorNode")> like INetworkNode {
        @display("p=669.12,274.28");
    }

    host_lpn_182: <default("SensorNode")> like INetworkNode {
        @display("p=613.08,269.19");
    }

    host_lpn_183: <default("SensorNode")> like INetworkNode {
        @display("p=400.93,237.57");
    }

    host_lpn_184: <default("SensorNode")> like INetworkNode {
        @display("p=496.90,137.98");
    }

    host_lpn_185: <default("SensorNode")> like INetworkNode {
        @display("p=446.77,109.78");
    }

    host_lpn_186: <default("SensorNode")> like INetworkNode {
        @display("p=488.54,158.50");
    }

    host_lpn_187: <default("SensorNode")> like INetworkNode {
        @display("p=569.49,128.92");
    }

    host_lpn_188: <default("SensorNode")> like INetworkNode {
        @display("p=534.10,513.93");
    }

    host_lpn_189: <default("SensorNode")> like INetworkNode {
        @display("p=556.16,450.68");
    }

    host_lpn_190: <default("SensorNode")> like INetworkNode {
        @display("p=494.81,540.40");
    }

    host_lpn_191: <default("SensorNode")> like INetworkNode {
        @display("p=596.21,450.18");
    }

    host_lpn_192: <default("SensorNode")> like INetworkNode {
        @display("p=620.97,499.30");
    }

    host_lpn_193: <default("SensorNode")> like INetworkNode {
        @display("p=522.08,383.89");
    }

    host_lpn_194: <default("SensorNode")> like INetworkNode {
        @display("p=693.53,334.06");
    }

    host_lpn_195: <default("SensorNode")> like INetworkNode {
        @display("p=517.33,352.05");
    }

    host_lpn_196: <default("SensorNode")> like INetworkNode {
        @display("p=567.14,277.80");
    }

    host_lpn_197: <default("SensorNode")> like INetworkNode {
        @display("p=626.79,163.67");
    }

    host_lpn_198: <default("SensorNode")> like INetworkNode {
        @display("p=706.27,296.98");
    }

    host_lpn_199: <default("SensorNode")> like INetworkNode {
        @display("p=574.72,197.58");
    }

    host_lpn_200: <default("SensorNode")> like INetworkNode {
        @display("p=384.70,179.43");
    }

}

